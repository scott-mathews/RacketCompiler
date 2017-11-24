#lang racket

; Import provided
(require "../utilities.rkt")

; Import custom
(require "../utilities/constants.rkt")
(require "../utilities/helpers.rkt")

(provide uniquify)

;;; === Uniquify === ;;;

; Traverses through a list of defines and returns a list of
; associations between old and new function names.
; This allows all functions to be renamed at once.
(define (function-names defs)
  (define function-counter 0)
  (define new-env '())
  (for ([def defs])
    (match def
      [`(define ((has-type ,var ,type) ,args* ...) ,body)
       (define new-fn-name (string->symbol (string-append "function" (number->string function-counter))))
       (set! function-counter (add1 function-counter))
       (set! new-env (cons (cons var new-fn-name) new-env))
       ]))
  new-env)

(define (uniquify alist)
  (lambda (exp)
    (match exp
      [v #:when (and (symbol? v) (not (set-member? built-ins v))) (lookup v alist)]
      [`(has-type ,v ,t) #:when (symbol? v) `(has-type ,(lookup v alist) ,t)]
      [`(has-type ,n ,t) #:when (integer? n) `(has-type ,n ,t)]
      [`(has-type ,b ,t) #:when (boolean? b) `(has-type ,b ,t)]
      [`(program ,type ,exps ...)
       (define e (last exps))
       (define defs (reverse (cdr (reverse exps))))
       (define new-env (function-names defs))
       (define new-defines '())
       (for ([def defs])
         (define-values (new-define name) ((uniquify new-env) def))
         (set! new-defines (cons new-define new-defines)))
       `(program ,type ,@(reverse new-defines) ,((uniquify new-env) e))]
      [`(define ((has-type ,(app (uniquify alist) var) ,type) ,args* ...) ,body)
       (define new-env alist)
       (define new-args '())
       (for ([arg args*])
         (match arg [`(has-type ,v ,t) (define new-name (gensym v))
                                (set! new-env (cons (cons v new-name) new-env))
                                (set! new-args (cons `(has-type ,new-name ,t) new-args))]))
       (values `(define ((has-type ,var ,type) ,@(reverse new-args)) ,((uniquify new-env) body)) var)]
      [`(has-type (lambda (,args* ...) ,body) ,type)
       (define lam-env alist)
       (define new-args '())
       (for ([arg args*])
         (match arg [`(has-type ,v ,t) (define new-name (gensym v))
                                       (set! lam-env (cons (cons v new-name) lam-env))
                                       (set! new-args (cons `(has-type ,new-name ,t) new-args))]))
       `(has-type (lambda (,@(reverse new-args)) ,((uniquify lam-env) body)) ,type)]
      [`(has-type ((has-type ,fname ,type) ,args* ...) ,t) #:when (member fname (map car alist))
                            `(has-type ((has-type ,(lookup fname alist) ,type) ,@(map (uniquify alist) args*)) ,t)]
      [`(has-type (let ([,x ,e]) ,body) ,tb)
       (let ([y (gensym x)])
         (let ([l (cons (cons x y) alist)])
           `(has-type (let ([,y ,((uniquify alist) e)]) ,((uniquify l) body)) ,tb)))]
      [`(has-type (if ,cnd ,thn ,els) ,t) `(has-type (if ,((uniquify alist) cnd) ,((uniquify alist) thn) ,((uniquify alist) els)) ,t)]
      [`(has-type (,(app (uniquify alist) op) ,es ...) ,t) ;(displayln (format "this is new op: ~a" op))
       `(has-type (,op ,@(map (uniquify alist) es)) ,t)]
      [else exp]
      )))

; tests ;
;;; End Uniquify ;;;