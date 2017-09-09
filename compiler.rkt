#lang racket
(require racket/fixnum)
(require racket/trace)
(require "interp.rkt")
(require "utilities.rkt")

;; This exports r0-passes, defined below, to users of this file.
(provide r0-passes r1-passes pe-arith-pass uniquify-pass flatten-pass select-instructions-pass assign-homes-pass)

;; The following pass is just a silly pass that doesn't change anything important,
;; but is nevertheless an example of a pass. It flips the arguments of +. -Jeremy
(define (flipper e)
  (match e
    [(? fixnum?) e]
    [`(read) `(read)]
    [`(- ,e1) `(- ,(flipper e1))]
    [`(+ ,e1 ,e2) `(+ ,(flipper e2) ,(flipper e1))]
    [`(program ,e) `(program ,(flipper e))]
    ))

;;; === Partial Evaluator === ;;;

(define (pe-neg2 exp)
  (match exp
    [ n         #:when (fixnum? n)                     (fx- 0 n)] ; int -> -int
    [`(+ ,n ,m) #:when (and (fixnum? n) (fixnum? m))  `(+ ,(pe-neg2 n) (pe-neg2 m))] ; (+ int int) -> (+ -int -int)
    [`(+ ,n ,e) #:when (fixnum? n)                    `(+ ,(pe-neg2 n) (- ,e))] ; (+ int exp) -> (+ -int (- exp))
    [`(+ ,e ,n) #:when (fixnum? n)                     (pe-neg2 `(+ n e))] ; (+ exp int) -> (+ -int (-exp))
    [e                                                `(- ,e)])) ; exp -> (- exp)

(define (pe-add2 left right)
  (match* (left right)
    [( n            m)           #:when (and (fixnum? n) (fixnum? m))  (fx+ n m)] ; int int -> int
    [( n           `(+ ,m ,b))   #:when (and (fixnum? n) (fixnum? m)) `(+ ,(fx+ n m) ,b)] ; int (+ int exp) -> (+ int exp)
    [(`(+ ,m ,b)    n)           #:when (and (fixnum? n) (fixnum? m)) `(+ ,(fx+ n m) ,b)] ; (+ int exp) int -> (+ int exp)
    [( n           `(+ ,ra ,rb)) #:when (fixnum? n)                    (pe-add2 (pe-add2 n ra) rb)] ; int (+ exp exp) -> (pe-add2 (pe-add2 int exp) exp)
    [(`(+ ,la ,lb) `(+ ,ra ,rb))                                      `(+ ,(pe-add2 ra la) ,(pe-add2 rb lb))] ; (+ exp exp) (+ exp exp) -> (+ (pe-add2 exp exp) (pe-add2 exp exp))
    [( a            b)           #:when (fixnum? b)                    (pe-add2 b a)] ; exp int -> (pe-add2 int exp)
    [( a            b)                                                `(+ ,a ,b)])) ; exp exp -> (+ exp exp)

(define (pe-arith e)
  (match e
    [(? fixnum?)    e]
    [(? symbol?)    e]
    [`(read)       `(read)]
    [`(- ,e1)       (pe-neg2 (pe-arith e1))]
    [`(+ ,e1 ,e2)   (pe-add2 (pe-arith e1) (pe-arith e2))]
    [`(let ([,x ,e]) ,body) `(let ([,x ,(pe-arith e)]) ,(pe-arith body))]
    [`(program ,e) `(program ,(pe-arith e))]
    ))


;;; === Uniquify === ;;;

(define (uniquify alist)
  (lambda (expression)
    (match expression
      [v #:when (symbol? v) (lookup v alist)]
      [n   #:when (integer? n) n]
      [`(let ([,x ,e]) ,body) (let ([y (gensym x)])
                                (let ([l (cons (cons x y) alist)])
                                `(let ([,y ,((uniquify alist) e)]) ,((uniquify l) body))))]
      [`(program ,e) `(program ,((uniquify alist) e))]
      [`(,op ,es ...) `(,op ,@(map (uniquify alist) es))])))


;;; ==== Flatten === ;;;

;;; Helpers ;;;

;; Get variable from list, or generate a temporary one
(define (genvar var)
  (if (empty? var) (gensym `tmp) (car var)))

; If args is empty, call f on just arg. Otherwise call f on the car of args.
(define (pass-optional1 f arg . args)
  (if (null? args) (f arg) (if (null? (car args)) (f arg) (f arg (car (car args))))))

; Check if an expression is a terminal one
(define (terminal? e)
  (or (fixnum? e) (symbol? e) (equal? `(read) e)))

;;; Flatten Itself ;;;

(define (flatten exp)
  (match exp
    [`(program ,e) (define-values (flat-exp assignments vars) (flatten-helper e))
                   `(program ,vars ,@assignments (return ,flat-exp))]
    ))

(define (flatten-helper exp . var)
  (match exp
    [v #:when (symbol? v) (values v '() (list v))]
    [n #:when (fixnum? n) (define v (genvar var))
                          (values v (list `(assign ,v ,n)) (list v))]
    [`(read) (define v (genvar var))
             (values v (list `(assign ,v (read))) (list v))]
    [`(+ ,n1 ,n2) #:when (and (fixnum? n1) (fixnum? n2)) (define v (genvar var))
                                                         (values v (list `(assign ,v (+ ,n1 ,n2))) (list v))]
    [`(+ ,n ,e) #:when (fixnum? n) (define v (genvar var))
                                   (define-values (flat-exp assignments vars) (flatten-helper e))
                                   (values v `( ,@assignments (assign ,v (+ ,n ,flat-exp))) (cons v vars))]
    [`(+ ,e ,n) #:when (fixnum? n) (pass-optional1 flatten-helper `(+ ,n ,e) var)]
    [`(+ ,e1 ,e2) (define v (genvar var))
                  (define-values (flat-exp1 assignments1 vars1) (flatten-helper e1))
                  (define-values (flat-exp2 assignments2 vars2) (flatten-helper e2))
                  (values v `(,@assignments1 ,@assignments2 (assign ,v (+ ,flat-exp1 ,flat-exp2))) (cons v (append vars1 vars2)))]
    [`(- ,n) #:when (fixnum? n) (define v (genvar var))
                                (values v (list `(assign ,v (- ,n))) (list v))]
    [`(- ,e) (define v (genvar var))
             (define-values (flat-exp assignments vars) (flatten-helper e))
             (values v `( ,@assignments (assign ,v (- ,flat-exp))) (cons v vars))]
    [`(let ([,v ,t]) ,body) #:when (terminal? t)
                            (define-values (flat-exp2 assignments2 vars2) (if (not (terminal? body)) (pass-optional1 flatten-helper body var) (values body '() (list body))))
                            (values flat-exp2
                                    `( (assign ,v ,t) ,@assignments2)
                                    (set->list (list->set (cons v vars2))))]
    [`(let ([,v ,e]) ,body) (define-values (flat-exp1 assignments1 vars1)
                              (if (equal? '() var)
                                  (flatten-helper e v)
                                  (flatten-helper e var)))
                            (define-values (flat-exp2 assignments2 vars2) (flatten-helper body))
                            (values flat-exp2
                                    `( ,@assignments1 (assign ,v ,flat-exp1) ,@assignments2)
                                    (set->list (list->set (cons v (append vars1 vars2)))))]
    ))


;;; === Select Instructions === ;;;

;;; Helpers ;;;

; Map a procedure which returns multiple values over a list, and return the result in a non-nested list
(define (map-me proc lst)
  (cond [(empty? lst) lst]
        [else (append (map-me-helper (proc (car lst))) (map-me proc (cdr lst)))]))

(define (map-me-helper x . xs)
  (append x xs))

;;; Select Instructions Itself ;;;
;; TODO: write tests for select-instructions, return values properly
(define (select-instructions exp)
  (match exp
    [`(assign ,lhs (read))                                             (list `(callq read_int)
                                                                             `(movq (reg rax) (var ,lhs)))]
    [`(assign ,v ,n)          #:when (fixnum? n)                       (list `(movq (int ,n) (var ,v)))]
    [`(assign ,v1 ,v2)        #:when (and (symbol? v1) (symbol? v2))   (list `(movq (var ,v2) (var ,v1)))]
    [`(assign ,v1 ,v2)        #:when (and (symbol? v1) (symbol? v2) (equal? v1 v2))   '()]
    [`(assign ,v (- ,n))      #:when (fixnum? n)                       (list `(movq (int ,n) (var ,v))
                                                                             `(negq (var ,v)))]
    [`(assign ,v1 (- ,v2))    #:when (and (symbol? v2) (equal? v1 v2)) (list `(negq (var ,v1)))]
    [`(assign ,v1 (- ,v2))    #:when (and (symbol? v2))                (list `(movq (var ,v2) (var ,v1))
                                                                             `(negq (var ,v1)))]
    [`(assign ,v (+ ,n1 ,n2)) #:when (and (fixnum? n1) (fixnum? n2))   (list `(movq (int ,n1) (var ,v))
                                                                             `(addq (int ,n2) (var ,v)))]
    [`(assign ,v1 (+ ,n ,v2)) #:when (and (fixnum? n) (symbol? v2)
                                          (equal? v1 v2))              (list `(addq (int ,n) (var ,v1)))]
    [`(assign ,v1 (+ ,n ,v2)) #:when (and (fixnum? n) (symbol? v2))    (list `(addq (int ,n) (var ,v2))
                                                                             `(movq (var ,v2) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,n)) #:when (and (fixnum? n) (symbol? v2))    (select-instructions `(assign ,v1 (+ ,n ,v2)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3)(equal? v1 v3))  (list `(addq (var ,v2) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3)(equal? v1 v2))  (list `(addq (var ,v3) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3))                (list `(addq (var ,v2) (var ,v3))
                                                                             `(movq (var ,v3) (var ,v1)))]
    [`(return ,v)             #:when (symbol? v)                       (list `(movq (var ,v) (reg rax)))]
    [`(program (,vars ...) ,instrs ...)                               `(program ,vars ,@(values (map-me select-instructions instrs)))]))

(define (alloc-size vars) 
  (let ([x (* 8 (length vars))]) 
    (if (= (modulo x 16) 0) 
        x 
        (+ x 8))))  

(define (make-homes vars ctr) 
  (cond [(empty? vars) '()] 
        [else (cons (cons (car vars) ctr) (make-homes (cdr vars) (- ctr 8)))]))

(define (assign-homes alist) 
  (lambda (exp) 
    (match exp 
      [`(addq (var ,v1) (var ,v2)) (list `(addq (deref rbp ,(lookup v1 alist)) (deref rbp ,(lookup v2 alist))))] 
      [`(addq (int ,n) (var ,v)) (list `(addq (int ,n) (deref rbp ,(lookup v alist))))] 
      [`(addq (int ,n1) (int ,n2)) (list exp)] 
      [`(negq (var ,v)) (list `(negq (deref rbp ,(lookup v alist))))] 
      [`(movq (var ,v1) (var ,v2)) (list `(movq (deref rbp ,(lookup v1 alist)) (deref rbp ,(lookup v2 alist))))] 
      [`(movq (int ,n) (var ,v)) (list `(movq (int ,n) (deref rbp ,(lookup v alist))))]
      [`(movq (reg ,r) (var ,v)) (list `(movq (reg ,r) (deref rbp ,(lookup v alist))))]
      [`(movq (var ,v) (reg ,r)) (list `(movq (deref rbp ,(lookup v alist)) (reg ,r)))] 
      [`(movq (reg ,r1) (reg ,r2)) (list exp)] 
      [`(callq ,fn) (list exp)] 
      [`(program (,vars ...) ,instrs ...) `(program ,(alloc-size vars) ,@(values (map-me (assign-homes (make-homes vars -8)) instrs)))]))) 


(define (patch-instructions exp)  
  (match exp  
    [`(movq (deref rbp ,n1) (deref rbp ,n2)) (list `(movq (deref rbp ,n1) (reg rax)) `(movq (reg rax) (deref rbp ,n2)))] 
    [`(program ,n ,instrs ...) `(program ,n ,@(values (map-me patch-instructions instrs)))]  
    [else (list exp)] 
    )) 

(define intro
  (lambda (n) (cond [(equal? (system-type) `macosx) (format "\t.globl _main\n_main:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n\tsubq $~a, %rsp\n\n" n)]
                    [else (format "\t.globl main\nmain:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n\tsubq $~a, %rsp\n\n" n)])))

(define conclusion
  (lambda (n) (cond [(equal? (system-type) `macosx) (format "\n\tmovq %rax, %rdi\n\tcallq _print_int\n\taddq $~a, %rsp\n\tmovq $0, %rax\n\tpopq %rbp\n\tretq" n)]
                    [(equal? (system-type) `windows) (format "\n\tmovq %rax, %rcx\n\tcallq print_int\n\taddq $~a, %rsp\n\tmovq $0, %rax\n\tpopq %rbp\n\tretq" n)]
                    [else (format "\n\tmovq %rax, %rdi\n\tcallq print_int\n\taddq $~a, %rsp\n\tmovq $0, %rax\n\tpopq %rbp\n\tretq" n)])))

(define (print-x86 exp)
  (match exp
    [`(addq (deref rbp ,n1) (deref rbp ,n2)) (format "\taddq ~a(%rbp), ~a(%rbp)\n" n1 n2)]
    [`(addq (int ,n1) (deref rbp ,n2)) (format "\taddq $~a, ~a(%rbp)\n" n1 n2)]
    [`(addq (int ,n1) (int ,n2)) (format "\taddq $~a, $~a\n" n1 n2)]
    [`(negq (deref rbp ,n)) (format "\tnegq ~a(%rbp)\n" n)]
    [`(movq (int ,n1) (deref rbp ,n2)) (format "\tmovq $~a, ~a(%rbp)\n" n1 n2)]
    [`(movq (deref rbp ,n) (reg ,r)) (format "\tmovq ~a(%rbp), %~a\n" n r)]
    [`(movq (reg ,r) (deref rbp ,n)) (format "\tmovq %~a, ~a(%rbp)\n" r n)]
    [`(movq (reg ,r1) (reg ,r2)) (format "\tmovq %~a, %~a\n" r1 r2)]
    [`(callq ,fn) (if (equal? (system-type) `macosx) (format "\tcallq _~a\n" fn) (format "callq ~a\n" fn))]
    [`(program ,n ,instrs ...) (string-append (intro n) (foldl string-append "" (map print-x86 instrs)) (conclusion n))]))

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"
(define r0-passes
  `( ("flipper" ,flipper ,interp-scheme)
     ("partial evaluator" ,pe-arith ,interp-scheme)
     ))

(define pe-arith-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
  ))

(define uniquify-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ))

(define flatten-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ))

(define select-instructions-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ))

(define assign-homes-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ))

(define patch-instructions-pass
  `( ("patch-instructions" ,patch-instructions ,interp-x86)
     ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ))

(define print-x86-pass
  `( ("patch-instructions" ,patch-instructions ,interp-x86)
     ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))

(define r1-passes
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))