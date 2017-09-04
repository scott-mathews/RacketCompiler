#lang racket
(require racket/fixnum)
(require racket/trace)
(require "interp.rkt")
(require "utilities.rkt")

;; This exports r0-passes, defined below, to users of this file.
(provide r0-passes)
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

;(interp-tests "uniquify" #f uniquify-passes interp-scheme "ex3" (range 1 5))
;(display "tests passed!") (newline)