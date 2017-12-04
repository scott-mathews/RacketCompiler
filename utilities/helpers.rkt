#lang racket

(require "constants.rkt")

; export utility functions
(provide function-type terminal? map-me remove-duplicate-movq cmp->cc
         look-up-type get-function-type get-lambda-type get-lambda-env
         update-arg-format make-f-list make-typed-f-list cmp?
         move-like-op? add-like-op? neg-like-op? call-like-op?)

;;;;;;;;;;;;;;;;;;;
; ==> Helpers <== ;
;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;
; Dynamic Typing Helpers ;
;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (tagof type)
  (match type
    [`Integer 1]
    [`Boolean 4]
    [`(Vector ,types ...) 2]
    [`(Vectorof ,types ...) 2]
    [`(,input-types ... -> ,output-type) 3]
    [`Void 5]))

;;
; Register Allocation Helpers ;
;
; Operations can be performed similarly
; on certain groups of operations.
;;
(define (move-like-op? op)
  (match op
    [`movq #t]
    [`movzbq #t]
    [`leaq #t]
    [else #f]))

(define (add-like-op? op)
  (match op
    [`addq #t]
    [`xorq #t]
    [`cmpq #t]
    [(? cmp?) #t]
    [else #f]))

(define (neg-like-op? op)
  (match op
    [`negq #t]
    [`indirect-callq #t]
    [else #f]))

(define (call-like-op? op)
  (match op
    [`callq #t]
    [`indirect-callq #t]
    [else #f]))
; END Register Allocation Helpers ;


; Traverses through a list of defines, and returns a list containing
; the name of each function.
(define (make-f-list defs)
  (define fns '())
  (for ([def defs])
    (match def
      [`(define ((has-type ,name ,type) ,args* ...) ,body)
       (set! fns (cons name fns))]))
  fns)

(define (make-typed-f-list defs)
  (define fns '())
  (for ([def defs])
    (match def
      [`(define ((has-type ,name ,type) ,args* ...) ,body)
       (set! fns (cons `(has-type ,name ,type) fns))]))
  fns)

; get-function-type
; TODO: Put this in define statement of typecheck instead of
; the mess that's currently there
(define (get-function-type fn)
  (match fn
    [`(define (,var ,args* ...) : ,type ,body)
     (define arg-types (foldr cons '()
                              (map (lambda (arg)
                                     (match arg
                                       [`[,name : ,t]
                                        t]))
                                   args*)))
     `(,@arg-types -> ,type)]))

; get-lambda-type
(define (get-lambda-type lam)
  (match lam
    [`(lambda (,args* ...) ,body)
     (define arg-types (foldr cons '()
                              (map (lambda (arg)
                                     arg
                                     ;(match arg
                                     ;  [`[,name : ,t]
                                     ;   t])
                                     )
                                   args*)))
     `(,@arg-types -> Any)]))

; get-lambda-env
(define (get-lambda-env lam env)
  (match lam
    [`(lambda (,args* ...) ,body)
     (foldr cons env
            (map (lambda (arg)
                   (cons arg `Any)
                   ;(match arg
                   ;  [`[,name : ,t]
                   ;   (cons name t)])
                   )
                 args*))]))

; update-arg-format
(define (update-arg-format args)
  (map (lambda (arg)
         (match arg
           [name `(has-type ,name Any)]
           [`[,name : ,type] `(has-type ,name ,type)]))
       args))

; Given the type of a function returns the output
; type of that function.
; e.g.
; (Integer -> Boolean) => Boolean
(define (function-type arg)
  (match arg
    [`(,args* ... -> ,output-type) output-type]
    [else #f]))

; Returns true if an expression is terminal
; (i.e. doesn't need to be recurred on.)
(define (terminal? e)
  (or (fixnum? e) (boolean? e) (symbol? e)
      (set-member? built-ins e) (equal? '(void) e)
      (equal? '(read) e)))

; Map a procedure which returns multiple values over a list,
; and return the result in a non-nested list
(define (map-me proc lst)
  (cond [(empty? lst) lst]
        [else (append (map-me-helper (proc (car lst))) (map-me proc (cdr lst)))]))

(define (map-me-helper x . xs)
  (append x xs))

; Traverses through a list of x86 instructions
; and remove adjacent identical movqs, or movqs
; from one location to the same location
(define (remove-duplicate-movq list)
  (cond [(empty? list) '()]
        [(empty? (cdr list)) `(,(car list))]
        [else (match (car list)
                [`(movq ,a ,b) (if (equal? (car list) (cadr list))
                                   (remove-duplicate-movq (cdr list))
                                   (if (equal? a b)
                                       (remove-duplicate-movq (cdr list))
                                       (cons (car list) (remove-duplicate-movq (cdr list)))))]
                [`(if ,cnd ,thn ,els) (cons `(if ,cnd ,(remove-duplicate-movq thn) ,(remove-duplicate-movq els)) (remove-duplicate-movq (cdr list)))]
                [else (cons (car list) (remove-duplicate-movq (cdr list)))])]))

; Takes a racket comparison operator and returns the appropriate
; x86 comparison operator
(define (cmp->cc op)
  (match op
    [`> `g]
    [`< `l]
    [`>= `ge]
    [`<= `le]
    [`eq? `e]
    [else (error "WARNING: in cmp->cc didn't match ~a" op)]))

; Checks if symbol is a comparison operator
(define (cmp? op)
   (member op cmp-syms))

; Looks up type of a var amongst a list o vars
(define (look-up-type var vars)
  (cond
    [(empty? vars) "ERROR var not found"]
    [(and (eq? var (car (car vars))) (pair? (cdr (car vars)))) (car (cdr (car vars)))]
    [(equal? var (car (car vars))) (cdr (car vars))]
    [else (look-up-type var (cdr vars))]))
