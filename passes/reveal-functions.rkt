#lang racket

(require racket/trace)

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

      ; Inject / Project
      [`(has-type (inject ,(app (reveal-functions f-list) e) ,t) ,ty) `(has-type (inject ,e ,t) ,ty)]
      [`(has-type (project ,(app (reveal-functions f-list) e) ,t) ,ty) `(has-type (project ,e ,t) ,ty)]
      
      [(? terminal?) exp]
      
      [`(has-type ,v ,t) #:when (member v f-list) `(has-type (inject (has-type (function-ref ,v) ,t) ,t) Any)]

      
      [`(has-type ,v ,t) #:when (or (symbol? v) (boolean? v) (integer? v)) `(has-type ,v ,t)]
      [`(program ,type ,exps ...)
       (define e (last exps))
       (define defs (reverse (cdr (reverse exps))))
       (define new-env (make-f-list defs))
       (define new-defines '())
       (for ([def defs])
         (define-values (new-define name) ((reveal-functions new-env) def))
         (set! new-defines (cons new-define new-defines)))       
       `(program ,type ,@(reverse new-defines) ,((reveal-functions new-env) e))]
      [`(define ((has-type ,var ,type) ,args* ...) ,body)
       (values `(define ((has-type ,var ,type) ,@args*) ,((reveal-functions f-list) body)) var)]
      [`(has-type (lambda (,args* ...) ,body) ,type)
       `(has-type (lambda (,@args*) ,((reveal-functions f-list) body)) ,type)]
      ;[`(has-type ((has-type ,fname ,type) ,args* ...) ,t) #:when (member fname f-list)
      ;                                    `(has-type (app (has-type (function-ref ,fname) ,type) ,@(map (reveal-functions f-list) args*)) ,t)]
      [`(has-type (let ([,x ,e]) ,body) ,tb) `(has-type (let ([,x ,((reveal-functions f-list) e)]) ,((reveal-functions f-list) body)) ,tb)]
      [`(has-type (if ,cnd ,thn ,els) ,t) `(has-type (if ,((reveal-functions f-list) cnd) ,((reveal-functions f-list) thn) ,((reveal-functions f-list) els)) ,t)]
      [`(has-type ((has-type ,op ,t-op) ,es ...) ,t) #:when (function-type t-op) `(has-type (app ,((reveal-functions f-list) `(has-type ,op ,t-op)) ,@(map (reveal-functions f-list) es)) ,t)]
      [`(has-type (,(app (reveal-functions f-list) op) ,es ...) ,t)
       ;(displayln (format "New op: ~a" op))
       `(has-type (,op ,@(map (reveal-functions f-list) es)) ,t)]
      ))) ; might need to update x to function-ref here
;;; End Reveal Functions ;;;