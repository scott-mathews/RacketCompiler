#lang racket

(require racket/trace)

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
      [`(program ,type ,exps ...)
       (define e (last exps))
       (define defs (reverse (cdr (reverse exps))))
       (define new-env (function-names defs))
       (define new-defines '())
       (for ([def defs])
         (define-values (new-define name) ((uniquify new-env) def))
         (set! new-defines (cons new-define new-defines)))
       `(program ,type ,@(reverse new-defines) ,((uniquify new-env) e))]
      
      ; Decompose Inject/Project/Has-type
      [`(,type-annot ,e ,t) #:when (type-annotation? type-annot) `(,type-annot ,((uniquify alist) e) ,t)]
      
      ;[v #:when (symbol? v) `(has-type ,(lookup v alist) ,t)]
      [v #:when (and (symbol? v) (not (set-member? built-ins v))) (lookup v alist)]
      [n #:when (integer? n) n]
      [b #:when (boolean? b) b]
      
      [`(define ((has-type ,(app (uniquify alist) var) ,type) ,args* ...) ,body)
       (define new-env alist)
       (define new-args '())
       (for ([arg args*])
         (match arg [`(has-type ,v ,t) (define new-name (gensym v))
                                (set! new-env (cons (cons v new-name) new-env))
                                (set! new-args (cons `(has-type ,new-name ,t) new-args))]))
       (values `(define ((has-type ,var ,type) ,@(reverse new-args)) ,((uniquify new-env) body)) var)]
      [`(lambda (,args* ...) ,body)
       (define lam-env alist)
       (define new-args '())
       (for ([arg args*])
         (match arg [`(has-type ,v ,t) (define new-name (gensym v))
                                       (set! lam-env (cons (cons v new-name) lam-env))
                                       (set! new-args (cons `(has-type ,new-name ,t) new-args))]))
       `(lambda (,@(reverse new-args)) ,((uniquify lam-env) body))]

      [`(let ((,x ,e)) ,body)
       (let ([y (gensym x)])
         (let ([l (cons (cons x y) alist)])
           `(let ([,y ,((uniquify alist) e)]) ,((uniquify l) body))))]
      
      [`((,type-annot ,fname ,type) ,args* ...) #:when (and (type-annotation? type-annot) (member fname (map car alist)))
                            `((,type-annot ,(lookup fname alist) ,type) ,@(map (uniquify alist) args*))]
      
      [`(if ,cnd ,thn ,els) `(if ,((uniquify alist) cnd) ,((uniquify alist) thn) ,((uniquify alist) els))]
      [`(,(app (uniquify alist) op) ,es ...) ;(displayln (format "this is new op: ~a" op))
       `(,op ,@(map (uniquify alist) es))]
      [else exp]
      )))

; tests ;
;;; End Uniquify ;;;