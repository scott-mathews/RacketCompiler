#lang racket

; Import provided
(require "../utilities.rkt")

; Import custom
(require "../utilities/helpers.rkt")
(require "../utilities/constants.rkt")

(provide reveal-functions)

;;; === Reveal Functions === ;;;

(define (reveal-functions f-list)
  ;(define recur (reveal-functions f-list))
  (lambda (exp)
    (match exp
      
      
      ; Decompose has-type/project/inject
      [`(,type-annot ,e ,t) #:when (type-annotation? type-annot) `(,type-annot ,((reveal-functions f-list) e) ,t)]
      
      
      [v #:when (member v f-list) `(function-ref ,v)]
      [(? terminal?) exp]
      
      [v #:when (or (symbol? v) (boolean? v) (integer? v)) v]
      [`(program ,type ,exps ...)
       (define e (last exps))
       (define defs (reverse (cdr (reverse exps))))
       (define new-env (make-f-list defs))
       (define new-defines '())
       (for ([def defs])
         (define-values (new-define name) ((reveal-functions new-env) def))
         (set! new-defines (cons new-define new-defines)))       
       `(program ,type ,@(reverse new-defines) ,((reveal-functions new-env) e))]

      ; Inject/Project
      ;[`(inject ,(app (reveal-functions f-list) e) ,t) `(inject ,e ,t)]
      ;[`(project ,(app (reveal-functions f-list) e) ,t) `(project ,e ,t)]
      
      [`(define ((has-type ,var ,type) ,args* ...) ,body)
       (values `(define ((has-type ,var ,type) ,@args*) ,((reveal-functions f-list) body)) var)]
      [`(lambda (,args* ...) ,body)
       `(lambda (,@args*) ,((reveal-functions f-list) body))]
      ;[`(has-type ((has-type ,fname ,type) ,args* ...) ,t) #:when (member fname f-list)
      ;                                    `(has-type (app (has-type (function-ref ,fname) ,type) ,@(map (reveal-functions f-list) args*)) ,t)]
      [`(let ([,x ,e]) ,body) `(let ([,x ,((reveal-functions f-list) e)]) ,((reveal-functions f-list) body))]
      [`(if ,cnd ,thn ,els) `(if ,((reveal-functions f-list) cnd) ,((reveal-functions f-list) thn) ,((reveal-functions f-list) els))]
      [`((,type-annot ,op ,t-op) ,es ...) #:when (function-type t-op) `(app ,((reveal-functions f-list) `(,type-annot ,op ,t-op)) ,@(map (reveal-functions f-list) es))]
      [`(,(app (reveal-functions f-list) op) ,es ...)
       ;(displayln (format "New op: ~a" op))
       `(,op ,@(map (reveal-functions f-list) es))]
      ))) ; might need to update x to function-ref here
;;; End Reveal Functions ;;;