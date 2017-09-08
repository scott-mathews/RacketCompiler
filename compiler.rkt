#lang racket
(require racket/fixnum)
(require racket/trace)
(require "interp.rkt")
(require "utilities.rkt")

;; This exports r0-passes, defined below, to users of this file.
(provide r0-passes)
(provide r1-passes)
(provide uniquify-passes)

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

;; Next we have the partial evaluation pass described in the book.
(define (pe-neg r)
  (cond [(fixnum? r) (fx- 0 r)]
	[else `(- ,r)]))

(define (pe-add r1 r2)
  (cond [(and (fixnum? r1) (fixnum? r2)) (fx+ r1 r2)]
	[else `(+ ,r1 ,r2)]))

(define (pe-neg2 exp)
  (match exp
    [ n         #:when (fixnum? n)                     (fx- 0 n)] ; int -> -int
    [`(+ ,n ,m) #:when (and (fixnum? n) (fixnum? m))  `(+ ,(pe-neg2 n) (pe-neg2 m))] ; (+ int int) -> (+ -int -int)
    [`(+ ,n ,e) #:when (fixnum? n)                    `(+ ,(pe-neg2 n) (- ,e))] ; (+ int exp) -> (+ -int (- exp))
    [`(+ ,e ,n) #:when (fixnum? n)                     (pe-neg2 `(+ n e))] ; (+ exp int) -> (+ -int (-exp))
    [e                                                `(- e)])) ; exp -> (- exp)

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
    [`(read)       `(read)]
    [`(- ,e1)       (pe-neg2 (pe-arith e1))]
    [`(+ ,e1 ,e2)   (pe-add2 (pe-arith e1) (pe-arith e2))]
    [`(let ([,x ,e]) ,body) `(let ([,x ,(pe-arith e)] ,(pe-arith body)))]
    [`(program ,e) `(program ,(pe-arith e))]
    ))

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

(define (map-me proc lst)
  (cond [(empty? lst) lst]
        [else (append (map-me-helper (proc (car lst))) (map-me proc (cdr lst)))]))

(define (map-me-helper x . xs)
  (append x xs))

(trace-define (flatten2 exp)
  (match exp
    [`(program ,e) (define-values (flat-exp assignments vars) (flatten2-helper e))
                   `(program ,vars ,@assignments (return ,flat-exp))]
    ;[`(,op ,exps ...) (define-values (flat-exp assignments vars) (map3 flatten2-helper exps))
    ;                  flat-exp]
    ))

(define (terminal? e)
  (or (fixnum? e) (symbol? e) (equal? `(read) e)))

;; Get variable from list, or generate a temporary one
(trace-define (genvar var)
  (if (empty? var) (gensym `tmp) (car var)))

(trace-define (pass-optional1 f arg . args)
  (if (null? args) (f arg) (if (null? (car args)) (f arg) (f arg (car (car args))))))

(trace-define (flatten2-helper exp . var)
  (match exp
    [v #:when (symbol? v) (values v '() (list v))]
    [n #:when (fixnum? n) (define v (genvar var))
                          (values v (list `(assign ,v ,n)) (list v))]
    [`(read) (define v (genvar var))
             (values v (list `(assign ,v (read))) (list v))]
    [`(+ ,n1 ,n2) #:when (and (fixnum? n1) (fixnum? n2)) (define v (genvar var))
                                                         (values v (list `(assign ,v (+ ,n1 ,n2))) (list v))]
    [`(+ ,n ,e) #:when (fixnum? n) (define v (genvar var))
                                   (define-values (flat-exp assignments vars) (flatten2-helper e))
                                   (values v `( ,@assignments (assign ,v (+ ,n ,flat-exp))) (cons v vars))]
    [`(+ ,e ,n) #:when (fixnum? n) (pass-optional1 flatten2-helper `(+ ,n ,e) var)]
    [`(+ ,e1 ,e2) (define v (genvar var))
                  (define-values (flat-exp1 assignments1 vars1) (flatten2-helper e1))
                  (define-values (flat-exp2 assignments2 vars2) (flatten2-helper e2))
                  (values v `(,@assignments1 ,@assignments2 (assign ,v (+ ,flat-exp1 ,flat-exp2))) (cons v (append vars1 vars2)))]
    [`(- ,n) #:when (fixnum? n) (define v (genvar var))
                                (values v (list `(assign ,v (- ,n))) (list v))]
    [`(- ,e) (define v (genvar var))
             (define-values (flat-exp assignments vars) (flatten2-helper e))
             (values v `( ,@assignments (assign ,v (- ,flat-exp))) (cons v vars))]
    [`(let ([,v ,e]) ,body) #:when (terminal? e)
                            (define-values (flat-exp2 assignments2 vars2) (if (not (terminal? body)) (flatten2-helper body v) (values body '() (list body))))
                            (values flat-exp2
                                    `( (assign ,v ,e) ,@assignments2)
                                    (set->list (list->set (cons v vars2))))]
    [`(let ([,v ,e]) ,body) (define-values (flat-exp1 assignments1 vars1) (flatten2-helper e v))
                            (define-values (flat-exp2 assignments2 vars2) (flatten2-helper body))
                            (values flat-exp2
                                    `( ,@assignments1 ,@assignments2)
                                    (set->list (list->set (cons v (append vars1 vars2)))))]
    ))



(define-struct flatData (data vars))

(define flatten 
  (lambda (exp)
    (match exp
      [`,n #:when (fixnum? n) (let ([temp (gensym `tmp)])
                                (make-flatData (list `(assign ,temp ,n)) (list (cons temp n))))]
      [`,y #:when (symbol? y) (make-flatData `(return ,y) (list (cons y empty)))]
      [`(read)
       (let ([temp (gensym `tmp)])
              (make-flatData (list `(assign ,temp (read))) (list (cons temp `(read)))))]
      [`(+ ,y ,n) #:when (and (symbol? y) (fixnum? n)) (let ([temp (gensym `tmp)])
                                                         (make-flatData (list `(assign ,temp (+ ,n ,y))) (cons (cons temp `((+ ,n ,y))) empty)))]
      [`(+ ,n ,y) #:when (and (symbol? y) (fixnum? n)) (let ([temp (gensym `tmp)])
                                                         (make-flatData (list `(assign ,temp (+ ,n ,y))) (cons (cons temp `((+ ,n ,y))) empty)))]
      ;[`(+ ,n1 ,n2) #:when (and (fixnum? n1) (fixnum? n2)) (let ([temp (gensym `tmp)])
       ;                                                      (make-flatData (list `(assign ,temp ,(+ n1 n2))) (cons (cons temp `(,(+ n1 n2))) empty)))]
      [`(+ ,n ,b) #:when (fixnum? n) (let ([ run (flatten b)])
                                       (let ([temp (gensym `tmp)])
                                         (make-flatData (append (flatData-data run) (list `(assign ,temp (+ ,n ,(car (car (flatData-vars run)))))))
                                                        (append
                                                         (flatData-vars run)
                                                         (list (cons temp `((+ ,n ,(car (car (flatData-vars run)))))))))))]
      [`(+ ,b ,n) #:when (fixnum? n) (let ([ run (flatten b)])
                                       (let ([temp (gensym `tmp)])
                                         (make-flatData (append (flatData-data run) (list `(assign ,temp (+ ,n ,(car (car (flatData-vars run)))))))
                                                        (append
                                                         (flatData-vars run)
                                                         (list (cons temp `((+ ,n ,(car (car (flatData-vars run)))))))))))]
      [`(+ ,b ,n) #:when (fixnum? n) (let ([ run (flatten b)])
                                       (let ([temp (gensym `tmp)])
                                         (make-flatData (append (flatData-data run) (list `(assign ,temp (+ ,n ,(car (car (flatData-vars run)))))))
                                                        (append
                                                         (flatData-vars run)
                                                         (list (cons temp `((+ ,n ,(car (car (flatData-vars run)))))))))))]
      [`(- ,n) #:when (fixnum? n) (let ([temp (gensym `tmp)])
                                    (make-flatData (list `(assign ,temp (- ,n))) (list (cons temp `((- ,n))))))]
      [`(- ,b)
       (let ([temp (gensym `tmp)])
         (let ([run (flatten b)])
           (make-flatData (append (flatData-data run) (list `(assign ,temp ,(car (car (flatData-vars run))))))
                          (append (flatData-vars run) (list (cons temp `((- ,(car (car (flatData-vars run)))))))))))]
      [`(let ([,y ,n]) ,body) #:when (fixnum? n) (let ([temp (gensym `tmp)])
                                                   (let ([run (flatten body)])
                                                     (make-flatData (append
                                                                     (list `(assign ,y ,n))
                                                                     (flatData-data run))
                                                                    (append
                                                                     (list (cons y n))
                                                                     (flatData-vars run)))))]
                                                          
      [`(let ([,y ,val]) ,body) (let ([temp (gensym `tmp)])
                                  (let ([valrun (flatten val)])
                                    (let ([bodyrun (flatten body)])
                                      (make-flatData (append
                                                      (flatData-data valrun)
                                                      (list `(assign ,y ,(car (car (flatData-vars valrun)))))
                                                      (flatData-data bodyrun))
                                                     (append
                                                      (flatData-vars valrun)
                                                      (list (cons y (car (car (flatData-vars valrun)))))
                                                      (flatData-vars bodyrun))))))]
      [`(program ,exp)
       (let ([run (flatten exp)])
         `(program ,@(values (append (list (map car (flatData-vars run))) (flatData-data run) `((return ,(car (car (reverse (flatData-vars run))))))))))] 
      
      )))



;; TODO: write tests for select-instructions, return values properly
(trace-define (select-instructions exp)
  (match exp
    [`(assign ,lhs (read))                                             (list `(callq read_int)
                                                                             `(movq (reg rax) (var ,lhs)))]
    [`(assign ,v ,n)          #:when (fixnum? n)                       (list `(movq (int ,n) (var ,v)))]
    [`(assign ,v (- ,n))      #:when (fixnum? n)                       (list `(movq (int ,n) (var ,v))
                                                                             `(negq (var ,v)))]
    [`(assign ,v1 (- ,v2))    #:when (and (symbol? v2) (equal? v1 v2)) (list `(negq (var ,v1)))]
    [`(assign ,v1 (- ,v2))    #:when (and (symbol? v2))                (list `(movq (var ,v2) (var ,v1))
                                                                             `(negq (var ,v1)))]
    [`(assign ,v (+ ,n1 ,n2)) #:when (and (fixnum? n1) (fixnum? n2))   (list `(movq (int ,n1) (var ,v))
                                                                             `(addq (int ,n2) (var ,v)))]
    [`(assign ,v1 (+ ,n ,v2)) #:when (and (fixnum? n) (symbol? v2)
                                          (equal? v1 v2))              (list `(addq (int ,n) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,n)) #:when (and (fixnum? n) (symbol? v2))    (select-instructions `(assign ,v1 (+ ,n ,v2)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3)(equal? v1 v3))  (list `(addq (var ,v2) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3)(equal? v1 v2))  (list `(addq (var ,v3) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3))                (list `(addq (var ,v2) (var ,v3))
                                                                             `(movq (var ,v1) (var ,v3)))]
    [`(return ,v)             #:when (symbol? v)                       (list `(movq (var ,v) (reg rax)))]
    [`(program (,vars ...) ,instrs ...)                               `(program ,vars ,@(values (map-me select-instructions instrs)))]))

;; a test (select-instructions `(program (a b) (assign a (+ 3 10)) (assign a (+ 3 a)) (assign b (read)) (assign b (+ a b)) (return b)))


(define (patch-instructions exp)  
  (match exp  
    [`(movq (deref rbp ,n1) (deref rbp ,n2)) (list `(movq (deref rbp ,n1) (reg rax)) `(movq (reg rax) (deref rbp ,n2)))] 
    [`(program ,n ,instrs ...) `(program ,n ,@(values (map-me patch-instructions instrs)))]  
    [else (list exp)] 
    )) 

(define intro
  (lambda (n) (cond [(equal? (system-type `macosx)) (format "\t.globl _main\n_main:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n\tsubq $~a, %rsp\n\n" n)]
                    [else (format "\t.globl main\nmain:\n\tpushq %rbp\n\tmovq %rsp, %rbp\n\tsubq $~a, %rsp\n\n" n)])))

(define conclusion
  (lambda (n) (cond [(equal? (system-type) `macosx) (format "\n\tmovq %rax, %rdi\n\tcallq _print_int\n\taddq $~a, %rsp\n\tmovq $0, %rax\n\tpopq %rbp\n\tretq" n)]
                    [(equal? (system-type `windows)) (format "\n\tmovq %rax, %rcx\n\tcallq print_int\n\taddq $~a, %rsp\n\tmovq $0, %rax\n\tpopq %rbp\n\tretq" n)]
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

(define uniquify-passes
  `( ("uniquify" ,(lambda (e) ((uniquify '()) e)) ,interp-scheme)
     ))

(define select-instructions-passes
  `( ("select-instructions" ,select-instructions ,interp-x86)))

(define patch-instructions-passes
  `( ("patch-instructions" ,patch-instructions ,interp-x86)))

(define print-x86-passes
  `( ("print-x86" ,print-x86 ,interp-x86)))

(define r1-passes
  `( ("pe-arith" ,pe-arith ,interp-scheme)
     ("uniquify" ,uniquify ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)))