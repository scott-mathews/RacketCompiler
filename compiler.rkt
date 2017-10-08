#lang racket
(require racket/fixnum)
(require racket/trace)
(require "interp.rkt")
(require "utilities.rkt")

;; This exports passes, defined below, to users of this file.
(provide r0-passes r1-passes pe-arith-pass uniquify-pass flatten-pass select-instructions-pass allocate-registers-pass patch-instructions-pass)

(define cmp-syms '(< > <= >= eq?))
(define bool-syms-biadic '(and))
(define arith-syms-biadic '(+))
(define arith-syms-monadic '(-))

;;; === Type Checker === ;;;

(define (typecheck-R2 env)
  (lambda (e)
    (define recur (typecheck-R2 env))
    (match e
      [(? fixnum?) `Integer]
      [(? boolean?) `Boolean]
      [(? symbol?) (lookup e env)]
      [`(read) `Integer]
      [`(let ([,x ,(app recur T)]) ,body)
       (define new-env (cons (cons x T) env))
       ((typecheck-R2 new-env) body)]
      [`(,op ,(app recur n1) ,(app recur n2)) #:when (member op arith-syms-biadic)
                     (if (and (eq? n1 `Integer) (eq? n2 `Integer))
                         `Integer
                         (error `typecheck-R2 "~a expects integer arguments" op))]
      [`(,op ,(app recur n)) #:when (member op arith-syms-monadic)
                                          (if (eq? n `Integer)
                                              `Integer
                                              (error `typecheck-R2 "~a expects integer arguments" op))]
      [`(not ,(app recur T))
       (match T
         [`Boolean `Boolean]
         [else (error `typecheck-R2 "`not` expects a boolean" e)])]
      [`(,op ,(app recur b1) ,(app recur b2)) #:when (member op bool-syms-biadic)
                                                                        (if (and (eq? b1 `Boolean) (eq? b2 `Boolean))
                                                                            `Boolean
                                                                            (error `typecheck-R2 "~a expects boolean arguments" op))]
      [`(,op ,(app recur t1) ,(app recur t2)) #:when (member op cmp-syms)
                                                                        (define accepted-types (if (eq? 'eq? op) '(Boolean Integer) '(Integer)))
                                                                        (if (and (member t1 accepted-types) (member t2 accepted-types) (eq? t1 t2))
                                                                            `Boolean
                                                                            (error `typecheck-R2 "~a expects integer arguments (or of the same type if eq?)" op))]
      [`(if ,(app recur cnd) ,(app recur thn) ,(app recur els))
       (if (eq? `Boolean cnd)
           (if (eq? thn els)
               thn
               (error `typecheck-R2 "both branches of if must be same type"))
           (error `typecheck-R2 "if expects a boolean in the conditional"))]
      [`(program ,body)
       (define ty ((typecheck-R2 '()) body))
       `(program (type ,ty) ,body)]
      )))

; tests ;
(define tc-int0 `(program (+ 3 4)))
(define tc-bool0 `(program (>= 3 4)))
(define tc-int `(program (if (eq? (read) 0) 777 (+ 2 (if (eq? (read) 0) 40 444)))))
(define tc-bool `(program (let ((x (if (eq? 42 (read)) #f #t))) (and x (> 30 (read))))))
(define tc-int2 `(program (let ((x (let ((y 30)) (+ y 12)))) (if (eq? x 12) (+ x 124) 42))))
(define tc-fail0 `(program (let ((x #f)) (+ 3 x))))
(define tc-fail1 `(program (if (eq? (read) 33) #f 3)))
(define tc-fail2 `(program (> 34 (- #f))))
(define tc-fail3 `(program (if (eq? (read) 42) #f (+ 33 2001))))
(define tc-fail4 `(program (if (eq? (read) 42) (if (eq? (read) 42) #f #t) 13)))

;;; End Type Checker ;;;

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
  (or (fixnum? e) (boolean? e) (symbol? e) (equal? `(read) e)))

;;; Flatten Itself ;;;

(define (flatten exp)
  (match exp
    [`(program ,e) (define-values (flat-exp assignments vars) (flatten-helper e))
                   `(program ,vars ,@assignments (return ,flat-exp))]
    ))

(define (flatten-helper exp . var)
  (match exp
    [v #:when (symbol? v) (values v '() (list v))]
    [n #:when (fixnum? n) (values n '() '())]
    [b #:when (boolean? b) (values b '() '())]
    [`(read) (define v (genvar var))
             (values v (list `(assign ,v (read))) (list v))]
    [`(not ,b) #:when (boolean? b)
               (define v (genvar var))
               (values v (list `(assign ,v (not ,b))) (list v))]
    [`(not ,e) (define v (genvar var))
               (define-values (flat-exp assignments vars) (flatten-helper e))
               (values v `(,@assignments (assign ,v (not ,flat-exp))) (cons v vars))]
    [`(,op ,e1 ,e2) #:when (or (member op cmp-syms) (member op arith-syms-biadic))
                    (define v (genvar var))
                    (define-values (flat-exp1 assignments1 vars1) (flatten-helper e1))
                    (define-values (flat-exp2 assignments2 vars2) (flatten-helper e2))
                    (values v `(,@assignments1 ,@assignments2 (assign ,v (,op ,flat-exp1 ,flat-exp2))) (cons v (append vars1 vars2)))]
    [`(- ,e) (define v (genvar var))
             (define-values (flat-exp assignments vars) (flatten-helper e))
             (values v `( ,@assignments (assign ,v (- ,flat-exp))) (cons v vars))]
    [`(let ([,v ,e]) ,body) (define-values (flat-exp1 assignments1 vars1)
                              (if (equal? '() var)
                                  (flatten-helper e v)
                                  (flatten-helper e var)))
                            (define-values (flat-exp2 assignments2 vars2) (flatten-helper body))
                            (values flat-exp2
                                    (if (equal? v flat-exp1)
                                    `(,@assignments1 ,@assignments2)
                                    `(,@assignments1 (assign ,v ,flat-exp1) ,@assignments2))
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
    [`(assign ,v1 ,v2)        #:when (and (symbol? v1) (symbol? v2) (equal? v1 v2))   '()]
    [`(assign ,v1 ,v2)        #:when (and (symbol? v1) (symbol? v2))   (list `(movq (var ,v2) (var ,v1)))]
    [`(assign ,v (- ,n))      #:when (fixnum? n)                       (list `(movq (int ,n) (var ,v))
                                                                             `(negq (var ,v)))]
    [`(assign ,v1 (- ,v2))    #:when (and (symbol? v2) (equal? v1 v2)) (list `(negq (var ,v1)))]
    [`(assign ,v1 (- ,v2))    #:when (and (symbol? v2))                (list `(movq (var ,v2) (var ,v1))
                                                                             `(negq (var ,v1)))]
    [`(assign ,v (+ ,n1 ,n2)) #:when (and (fixnum? n1) (fixnum? n2))   (list `(movq (int ,n1) (var ,v))
                                                                             `(addq (int ,n2) (var ,v)))]
    [`(assign ,v1 (+ ,n ,v2)) #:when (and (fixnum? n) (symbol? v2)
                                          (equal? v1 v2))              (list `(addq (int ,n) (var ,v1)))]
    [`(assign ,v1 (+ ,n ,v2)) #:when (and (fixnum? n) (symbol? v2))    (list `(movq (var ,v2) (var ,v1))
                                                                             `(addq (int ,n) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,n)) #:when (and (fixnum? n) (symbol? v2))    (select-instructions `(assign ,v1 (+ ,n ,v2)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3)(equal? v1 v3))  (list `(addq (var ,v2) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3)(equal? v1 v2))  (list `(addq (var ,v3) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3)(equal? v2 v3))  (list `(movq (var ,v3) (var ,v1))
                                                                             `(addq (var ,v3) (var ,v1)))]
    [`(assign ,v1 (+ ,v2 ,v3))#:when (and (symbol? v1) (symbol? v2)
                                          (symbol? v3))                (list `(movq (var ,v3) (var ,v1))
                                                                             `(addq (var ,v2) (var ,v1)))]
    [`(return ,v)             #:when (symbol? v)                       (list `(movq (var ,v) (reg rax)))]
    [`(return ,n)                                                      (list `(movq (int ,n) (reg rax)))]
    [`(program (,vars ...) ,instrs ...)                               `(program ,vars ,@(remove-duplicate-movq (values (map-me select-instructions instrs))))]))

(define (remove-duplicate-movq list)
  (cond [(empty? list) '()]
        [(empty? (cdr list)) `(,(car list))]
        [else (match (car list)
                [`(movq ,a ,b) (if (equal? (car list) (cadr list))
                  (remove-duplicate-movq (cdr list))
                  (cons (car list) (remove-duplicate-movq (cdr list))))]
                [else (cons (car list) (remove-duplicate-movq (cdr list)))])]))

;;; === Uncover Live === ;;;
(define (ripple func list carry)
  (cond [(empty? list) '()]
        [else (let ([result (func (car list) carry)])
                (cons carry (ripple func (cdr list) result)))]))

(define (live-after-set read written prevset)
  (set-union read (set-subtract prevset written)))

(define (uncover-live exp)
  (match exp
    [`(program (,vars ...) ,instrs ...) `(program (,vars ,(reverse (ripple get-set-of-vars-from-instruction (reverse instrs) (set)))) ,@instrs)]))

(define (get-set-of-vars-from-instruction instr prevset)
  (match instr
    [`(movq (var ,read) (var ,writ)) (live-after-set (set read) (set writ) prevset)]
    [`(movq (,type ,x) (var ,writ)) (live-after-set (set) (set writ) prevset)]
    [`(,op (var ,read) (var ,writ)) (live-after-set (set read) (set) prevset)]
    [`(,op (var ,read) (,type ,x)) (live-after-set (set read) (set) prevset)]
    [else                           prevset]))

;; test programs ;;
(define tp-ul-1 `(program (x y z) (movq (int 1) (var x)) (movq (int 3) (var y)) (addq (var y) (var x)) (movq (var x) (var z)) (negq (var z)) (movq (var z) (reg rax))))
(define tp-ul-2 `(program (v w x y z t.1 t.2)
                          (movq (int 1) (var v))
                          (movq (int 46) (var w))
                          (movq (var v) (var x))
                          (addq (int 7) (var x))
                          (movq (var x) (var y))
                          (addq (int 4) (var y))
                          (movq (var x) (var z))
                          (addq (var w) (var z))
                          (movq (var y) (var t.1))
                          (negq (var t.1))
                          (movq (var z) (var t.2))
                          (addq (var t.1) (var t.2))
                          (movq (var t.2) (reg rax))))
(define tp-ul-hard `(program
  (and127582
   tmp127586
   ofJuliet127581
   tmp127585
   thanThat127580
   herRomeo127583
   woe127579
   ofMore127578
   aTale127577
   wasThere127576
   never127575)
  (movq (int 27) (var never127575))
  (movq (int -6) (var wasThere127576))
  (movq (var wasThere127576) (var aTale127577))
  (addq (var never127575) (var aTale127577))
  (movq (var aTale127577) (var ofMore127578))
  (negq (var ofMore127578))
  (movq (var never127575) (var woe127579))
  (movq (var woe127579) (var thanThat127580))
  (addq (var never127575) (var thanThat127580))
  (movq (var aTale127577) (var ofJuliet127581))
  (negq (var ofJuliet127581))
  (movq (var ofMore127578) (var and127582))
  (addq (int 5) (var and127582))
  (movq (int -7) (var herRomeo127583))
  (movq (var ofJuliet127581) (var tmp127586))
  (addq (int 70) (var tmp127586))
  (movq (var herRomeo127583) (var tmp127585))
  (addq (var tmp127586) (var tmp127585))
  (movq (var tmp127585) (reg rax)))
)
;;; End Uncover-Live ;;;

;;; === Build-Interference === ;;;
(define (build-interference exp)
  (match exp
    [`(program (,vars ,live-afters) ,instrs ...) `(program (,vars
                                                            ,(graphify (make-graph vars) live-afters instrs)
                                                            )
                                                            ,@instrs)]))

(define (graphify graph live-afters instrs)
  (define g graph)
  (for ([lafter live-afters] [instr instrs])
    (define lafter-v (set->list lafter))
    (match instr
      [`(movq (,type1 ,s) (,type2 ,d)) (for ([var lafter-v])
                                         (if (or (equal? s var) (equal? d var))
                                             "pass"
                                             (add-edge g var d)))]
      [`(,op (,type1 ,s) (,type2 ,d)) (for ([var lafter-v])
                                        (if (equal? d var)
                                            "pass"
                                            (add-edge g var d)))]
      [`(,op (,type ,v)) (for ([var lafter-v])
                           (add-edge g var v))]
      [`(callq ,label) (for ([reg caller-save])
                         (for ([var lafter-v])
                           (add-edge g (register->color reg) var)))]
      [else "pass"]))
  g)
;;; End Build-Interference ;;;

;;; === Allocate-Registers === ;;;

(define (allocate-registers exp)
    (match exp
    [`(program (,vars ,graph) ,instrs ...) (define new-names (color-graph graph (build-MoveG vars instrs) vars))
                                           `(program ,vars ,@(map (lambda (instr) (update-name new-names instr)) instrs))]))

(define (prune-vars new-names vars)
  (filter (lambda (var) (> (hash-ref new-names var) (vector-length general-registers))) vars))

(define (update-name new-names instr)
  (match instr
    [`(,op (,type1 ,v1) (,type2 ,v2)) `(,op ,(if (and (equal? 'var type1) (< (hash-ref new-names v1) (vector-length general-registers)))
                                                 `(reg ,(vector-ref general-registers (hash-ref new-names v1)))
                                                 `(,type1 ,v1))
                                            ,(if (and (equal? 'var type2) (< (hash-ref new-names v2) (vector-length general-registers)))
                                                 `(reg ,(vector-ref general-registers (hash-ref new-names v2)))
                                                 `(,type2 ,v2)))]
    [`(,op (,type ,v)) `(,op ,(if (and (equal? 'var type) (< (hash-ref new-names v) (vector-length general-registers)))
                                  `(reg ,(vector-ref general-registers (hash-ref new-names v)))
                                  `(,type ,v)))]
    [else instr]))

(define (color-graph graph mgraph vars)
  ; constraints : (Var . Set of Numbers)
  (define constraints (make-hash))
  ; labels : (Var . Number)
  (define labels (make-hash))
  (define W vars)
  (define precount 0)
  (while (< precount (set-count caller-save))
    (if (hash-ref graph precount #f)
        (for ([adj-item (adjacent graph precount)])
          (hash-update! constraints adj-item (lambda (item) (set-union (set precount) item)) (set precount)))
        "pass")
    (set! precount (+ precount 1)))
  (while (not (empty? W))
    ; Sort W by # constraints decreasing
    (set! W (sort W (lambda (x y) (> (set-count (hash-ref constraints x (set))) (set-count (hash-ref constraints y (set)))))))
    ; Pop first item in W
    (define i (car W))
    (set! W (cdr W))
    (define priority-set (filter (lambda (x) (not (equal? x (set))))(map (lambda (n) (hash-ref labels
                                                                                               n
                                                                                               (set)))
                                                                         (filter (lambda (x) (not (set-member? (list->set (adjacent graph i)) x))) (set->list (adjacent mgraph i))))))
    

    (define count 0)
    (define set-already #f)
    (for ([p-val priority-set])
      (if (not (set-member? (hash-ref constraints i (set)) p-val))
          (begin
            (hash-set! labels i p-val)
            (set! set-already #t)
            (set! count p-val))
          "pass"))
    ; Find first number not in constraints of i
    (if (not set-already)
        (begin
          (while (set-member? (hash-ref constraints i (set)) count)
                 (set! count (+ count 1)))
          (hash-set! labels i count))
        "pass")
        ; Assign i to count
    
    ; Update constraints for all adjacent nodes to i
    (for ([adj-item (adjacent graph i)])
      (hash-update! constraints adj-item (lambda (item) (set-union (set count) item)) (set count))))
  labels)

;;; End Allocate-Registers ;;;



;;; Begine Move Biased ;;;


(define (build-MoveG vars inst)
  (define g (make-graph vars))
  (for ([i inst])
    (match i
      [`(movq (var ,x) (var ,y)) (add-edge g x y)]
      [else "Pass"]))
   g)
        



;;; End Move Biased ;;; 

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
      [`(addq (var ,v) (reg ,r)) (list `(addq (deref rbp ,(lookup v alist)) (reg ,r)))]
      [`(addq (int ,n) (reg ,r)) (list exp)]
      [`(addq (reg ,r1) (reg ,r2)) (list exp)]
      [`(negq (var ,v)) (list `(negq (deref rbp ,(lookup v alist))))]
      [`(negq (reg ,r)) (list exp)]
      [`(movq (var ,v1) (var ,v2)) (list `(movq (deref rbp ,(lookup v1 alist)) (deref rbp ,(lookup v2 alist))))] 
      [`(movq (int ,n) (var ,v)) (list `(movq (int ,n) (deref rbp ,(lookup v alist))))]
      [`(movq (reg ,r) (var ,v)) (list `(movq (reg ,r) (deref rbp ,(lookup v alist))))]
      [`(movq (var ,v) (reg ,r)) (list `(movq (deref rbp ,(lookup v alist)) (reg ,r)))] 
      [`(movq (reg ,r1) (reg ,r2)) (list exp)]
      [`(movq (int ,n) (reg ,r)) (list exp)]
      [`(callq ,fn) (list exp)] 
      [`(program (,vars ...) ,instrs ...) `(program ,(alloc-size vars) ,@(values (map-me (assign-homes (make-homes vars -8)) instrs)))]))) 


(define (patch-instructions exp)  
  (match exp  
    [`(addq (deref rbp ,n1) (deref rbp ,n2)) (list `(movq (deref rbp ,n1) (reg rax)) 
                                                   `(addq (reg rax) (deref rbp ,n2)))]
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
    [`(addq (deref rbp ,n) (reg ,r)) (format "\taddq ~a(%rbp), %~a\n" n r)]
    [`(addq (int ,n1) (deref rbp ,n2)) (format "\taddq $~a, ~a(%rbp)\n" n1 n2)]
    [`(addq (int ,n1) (int ,n2)) (format "\taddq $~a, $~a\n" n1 n2)]
    [`(addq (reg ,r) (deref rbp ,n)) (format "\taddq %~a, ~a(%rbp)\n" r n)]
    [`(addq (reg ,r1) (reg ,r2)) (format "\taddq %~a, %~a\n" r1 r2)]
    [`(addq (int ,n) (reg ,r)) (format "\taddq $~a, %~a\n" n r)]
    [`(negq (deref rbp ,n)) (format "\tnegq ~a(%rbp)\n" n)]
    [`(negq (reg ,r)) (format "\tnegq %~a\n" r)]
    [`(movq (int ,n1) (deref rbp ,n2)) (format "\tmovq $~a, ~a(%rbp)\n" n1 n2)]
    [`(movq (deref rbp ,n) (reg ,r)) (format "\tmovq ~a(%rbp), %~a\n" n r)]
    [`(movq (int ,n1) (reg ,r)) (format "\tmovq $~a, %~a\n" n1 r)]
    [`(movq (reg ,r) (deref rbp ,n)) (format "\tmovq %~a, ~a(%rbp)\n" r n)]
    [`(movq (reg ,r1) (reg ,r2)) (format "\tmovq %~a, %~a\n" r1 r2)]
    [`(callq ,fn) (if (equal? (system-type) `macosx) (format "\tcallq _~a\n" fn) (format "callq ~a\n" fn))]
    [`(program ,n ,instrs ...) (string-append (intro n) (foldr string-append "" (map print-x86 instrs)) (conclusion n))]))

;; Define the passes to be used by interp-tests and the grader
;; Note that your compiler file (or whatever file provides your passes)
;; should be named "compiler.rkt"
(define r0-passes
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
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
  `( ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ))

(define allocate-registers-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ))

(define patch-instructions-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ))

(define print-x86-pass
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))

(define r1-passes
  `( ("partial evaluator" ,pe-arith ,interp-scheme)
     ("uniquify" ,(uniquify '()) ,interp-scheme)
     ("flatten" ,flatten ,interp-C)
     ("select-instructions" ,select-instructions ,interp-x86)
     ("uncover-live" ,uncover-live ,interp-x86)
     ("build-interference" ,build-interference ,interp-x86)
     ("allocate-registers" ,allocate-registers ,interp-x86)
     ("assign-homes" ,(assign-homes '()) ,interp-x86)
     ("patch-instructions" ,patch-instructions ,interp-x86)
     ("print-x86" ,print-x86 ,interp-x86)
     ))