#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")

(provide uniquify-r8)

;;;;;;;;;;;;;;;
; Uniquify R8 ;
;;;;;;;;;;;;;;;
(define (uniquify-r8 program)
  (match program
    [`(program ,exps ...)

     ; Extract defines and body
     (define defines (reverse (cdr (reverse exps))))
     (define body (last exps))

     ; Starting environment
     (define start-env '())

     ; Uniquify function names
     ; reset globals
     (set! function-counter 0)
     (map (lambda (define)
            (match define
              [`(define (,fun ,args ...) ,body)
               (set! start-env (cons (cons fun (make-fn-name)) start-env))]))
          defines)

     `(program ,@(map (uniquify-define start-env) defines) ,((uniquify-exp start-env) body))]))


; Uniquify a define
(define (uniquify-define env)
  (lambda (def)
    (match def
      [`(define (,fun ,args ...) ,body)

       (define define-env (make-arg-env args))
       
       `(define (,(lookup fun env) ,@(map (lambda (arg) (lookup arg define-env)) args)) ,((uniquify-exp (append define-env env)) body))
       ])))


; Create new names for arguments
(define (make-arg-env args)
  (foldr cons '() (map
                   (lambda (arg)
                     (cons arg (gensym arg)))
                   args)))

; Uniquify an expression
(define (uniquify-exp env)
  (lambda (exp)
    (match exp
      ; Trivial cases
      [v #:when (and (member v (map car env)) (symbol? v)) (lookup v env)]
      [v #:when (symbol? v) v]
      [t #:when (terminal? t) t]

      ; If
      [`(if ,cnd ,thn ,els)
       `(if ,((uniquify-exp env) cnd) ,((uniquify-exp env) thn) ,((uniquify-exp env) els))]

      ; Let
      [`(let ((,v ,e)) ,body)
       (define new-v (gensym v))
       `(let ((,new-v ,((uniquify-exp env) e)))
          ,((uniquify-exp (cons (cons v new-v) env)) body))]

      ; Lambda
      [`(lambda (,args ...) ,body)

       (define lambda-env (make-arg-env args))

       `(lambda (,@(map (lambda (arg) (lookup arg lambda-env)) args))
          ,((uniquify-exp (append env lambda-env)) body))]

      ; Operations
      [`(,exps ...)
       `(,@(map (uniquify-exp env) exps))])))

;;;;;;;;;;;;;;;;;;;;
; Global Variables ;
;;;;;;;;;;;;;;;;;;;;
(define function-counter 0)
(define (make-fn-name)
  (define fn-name (string->symbol (string-append (symbol->string 'function) (number->string function-counter))))
  (set! function-counter (add1 function-counter))
  fn-name)