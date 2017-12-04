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
      [(? terminal?) exp]
      
      [v #:when (member v f-list) `(function-ref ,v)]
      [v #:when (or (symbol? v) (boolean? v) (integer? v)) v]

      ;;;;;;;;;;;;;;;;;;
      ; Project/Inject ;
      ;;;;;;;;;;;;;;;;;;
      [`(project ,s ,t) `(project ,((reveal-functions f-list) s) ,t)]
      [`(inject ,s ,t) `(inject ,((reveal-functions f-list) s) ,t)]
      
      [`(program ,type ,exps ...)
       ; pull out body and defines
       (define e (last exps))
       (define defs (reverse (cdr (reverse exps))))

       ; make a list of function names
       (define new-env (map (lambda (def) (first (second def))) defs))
       (define new-defines '())
       
       (for ([def defs])
         (define new-define ((reveal-functions new-env) def))
         (set! new-defines (cons new-define new-defines)))

       `(program ,type ,@(reverse new-defines) ,((reveal-functions new-env) e))]
      
      [`(define ((has-type ,var ,type) ,args* ...) ,body)
       (values `(define (,var ,@args*) ,((reveal-functions f-list) body)) var)]

      [`(lambda (,args* ...) ,body)
       `(lambda (,@args*) ,((reveal-functions f-list) body))]
      ;[`(has-type ((has-type ,fname ,type) ,args* ...) ,t) #:when (member fname f-list)
      ;                                    `(has-type (app (has-type (function-ref ,fname) ,type) ,@(map (reveal-functions f-list) args*)) ,t)]

      [`(let ([,x ,e]) ,body)
       `(let ([,x ,((reveal-functions f-list) e)]) ,((reveal-functions f-list) body))]

      [`(if ,cnd ,thn ,els) `(if ,((reveal-functions f-list) cnd) ,((reveal-functions f-list) thn) ,((reveal-functions f-list) els))]

      [`(,op ,es ...) #:when (terminal? op) `(,op ,@(map (reveal-functions f-list) es))]
      [`(,op ,es ...) `(app ,((reveal-functions f-list) `,op) ,@(map (reveal-functions f-list) es))]

      ;[`(has-type (,(app (reveal-functions f-list) op) ,es ...) ,t)
      ; ;(displayln (format "New op: ~a" op))
      ; `(has-type (,op ,@(map (reveal-functions f-list) es)) ,t)]
      ))) ; might need to update x to function-ref here
;;; End Reveal Functions ;;;