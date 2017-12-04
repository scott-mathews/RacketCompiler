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
;(define (function-names defs)
;  (define function-counter 0)
;  (define new-env '())
;  (for ([def defs])
;    (match def
;      [`(define ((has-type ,var ,type) ,args* ...) ,body)
;       (define new-fn-name (string->symbol (string-append "function" (number->string function-counter))))
;       (set! function-counter (add1 function-counter))
;       (set! new-env (cons (cons var new-fn-name) new-env))
;       ]))
;  new-env)

(define (function-names defs)
  (define function-counter 0)
  (define new-env '())
  (for ([def defs])
    (match def
      [`(define (,var ,args ...) ,body)
       (define new-fn-name (string->symbol (string-append "function" (number->string function-counter))))
       (set! function-counter (add1 function-counter))
       (set! new-env (cons (cons var new-fn-name) new-env))]))
  new-env)

(define (uniquify alist)
  (lambda (exp)
    (match exp

      ;;;;;;;;;;;;;;;;
      ; Simple Cases ;
      ;;;;;;;;;;;;;;;;
      
      [v #:when (and (symbol? v) (not (set-member? built-ins v))) (lookup v alist)]
      [t #:when (terminal? t) t]

      ;;;;;;;;;;;;;;;;;;;;;;;;
      ; Injection/Projection ;
      ;;;;;;;;;;;;;;;;;;;;;;;;

      [`(inject ,e ,T) `(inject ,((uniquify alist) e) ,T)]
      [`(project ,e ,T) `(project ,((uniquify alist) e) ,T)]
      
      ;[`(has-type ,v ,t) #:when (symbol? v) `(has-type ,(lookup v alist) ,t)]
      ;[`(has-type ,n ,t) #:when (integer? n) `(has-type ,n ,t)]
      ;[`(has-type ,b ,t) #:when (boolean? b) `(has-type ,b ,t)]

      ;;;;;;;;;;;
      ; Program ;
      ;;;;;;;;;;;
      
      [`(program ,type ,exps ...)
       (define e (last exps))
       (define defs (reverse (cdr (reverse exps))))
       (define new-env (function-names defs))
       (define new-defines '())
       (for ([def defs])
         (define new-define ((uniquify new-env) def))
         (set! new-defines (cons new-define new-defines)))
       `(program ,type ,@(reverse new-defines) ,((uniquify new-env) e))]

      ;;;;;;;;;;
      ; Define ;
      ;;;;;;;;;;
      
      [`(define (,(app (uniquify alist) var) ,args* ...) ,body)
       (define new-env alist)
       (define new-args '())
       (for ([arg args*])
         (match arg [v (define new-name (gensym v))
                       (set! new-env (cons (cons v new-name) new-env))
                       (set! new-args (cons new-name new-args))]))
       `(define (,var ,@(reverse new-args)) ,((uniquify new-env) body))]

      ;;;;;;;;;;
      ; Lambda ;
      ;;;;;;;;;;
      
      [`(lambda (,args* ...) ,body)
       (define lam-env alist)
       (define new-args '())
       (for ([arg args*])
         (match arg [v (define new-name (gensym v))
                       (set! lam-env (cons (cons v new-name) lam-env))
                       (set! new-args (cons new-name new-args))]))
       `(lambda (,@(reverse new-args)) ,((uniquify lam-env) body))]

      
      ;[`(,fname ,args* ...) #:when (member fname (map car alist))
      ;                      `(,(lookup fname alist) ,@(map (uniquify alist) args*))]

      
      [`(let ([,x ,e]) ,body)
       (let ([y (gensym x)])
         (let ([l (cons (cons x y) alist)])
           `(let ([,y ,((uniquify alist) e)]) ,((uniquify l) body))))]

      [`(if ,cnd ,thn ,els)
       `(if ,((uniquify alist) cnd) ,((uniquify alist) thn) ,((uniquify alist) els))]

      [`(,(app (uniquify alist) op) ,es ...) ;(displayln (format "this is new op: ~a" op))
       `(,op ,@(map (uniquify alist) es))]
      
      [else exp]
      )))

; tests ;
;;; End Uniquify ;;;