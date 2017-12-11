#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")

(provide box-mutations)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Box Mutations ;                                          ;
;;;;;;;;;;;;;;;;;                                          ;
;                                                          ;
; 1. Traverse the AST (find-set!s)                         ;
;    a. Update set! to vector-set!                         ;
;    b. Take note of the variables which are set!-ed       ;
;                                                          ;
; 2. Traverse the AST again (vectorize-vars)               ;
;    a. Update Instantiation of noted variables to vectors ;
;    b. Update references to noted variables to vector-ref ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;
; Box Mutations ;
;;;;;;;;;;;;;;;;;
(define (box-mutations program)

  ; Reset Global Variables
  (set! set!ed-vars '())
  (set! arg-var-env '())
  (set! arg-vars '())
  
  ; 1. Find set!s and change set! to vector-set!
  (set! program (find-set!s program))

  ; 2. Changed set!ed var references to vector-ref
  (set! program (vectorize-vars program))
  
  program)






;;;;;;;;;;;;;;
; Find Set!s ;
;;;;;;;;;;;;;;
(define (find-set!s program)
  (match program
    [`(program ,exps ...)

     ; Extract defines and body
     (define defines (reverse (cdr (reverse exps))))
     (define body (last exps))

     ; Traverse defines
     (define new-defines (map find-set!s-define defines))
     
     ; Traverse body
     (define new-body (find-set!s-exp body))
     
     `(program ,@new-defines ,new-body)]))


; Find Set!s Define
(define (find-set!s-define def)
  (match def
    [`(define (,fun ,args ...) ,body)

     ; add args to the list of arg-vars
     (set! arg-vars (append args arg-vars))
     
     `(define (,fun ,@args) ,(find-set!s-exp body))]))

; Find Set!s Expressions
(define (find-set!s-exp exp)
  (match exp
    ; Trivial cases
    [t #:when (terminal? t) t]

    ; Set! Case
    [`(set! ,var ,e)
     ; Add the var to the list of mutated vars
     (set! set!ed-vars (cons var set!ed-vars))

     ; Generate a new name for the var (to be used if it is an arg)
     (set! arg-var-env (cons (cons var (gensym 'argvar)) arg-var-env))

     `(set! ,var ,e)]

    ; Lambda case
    [`(lambda (,args ...) ,body)

     ; add args to the list of arg-vars
     (set! arg-vars (append args arg-vars))
     
     `(lambda (,@args) ,(find-set!s-exp body))]

    ; If case
    [`(if ,cnd ,thn ,els)
     `(if ,(find-set!s-exp cnd) ,(find-set!s-exp thn) ,(find-set!s-exp els))]

    [`(,exps ...) `(,@(map find-set!s-exp exps))]))

;;;;;;;;;;;;;;;;;;
; Vectorize Vars ;
;;;;;;;;;;;;;;;;;;
(define (vectorize-vars program)
  (match program
    [`(program ,exps ...)

     ; Extract defines and body
     (define defines (reverse (cdr (reverse exps))))
     (define body (last exps))

     `(program ,@(map vectorize-vars-define defines) ,(vectorize-vars-exp body))]))

; Vectorize-Vars defines
(define (vectorize-vars-define def)
  (match def
    [`(define (,fun ,args ...) ,body)

     (define vectorized-body (vectorize-vars-exp body))

     ; TODO: add in initializing lets for set!ed args
     (define new-body (initialize-vectors args vectorized-body))
     
     `(define (,fun ,@args) ,new-body)]))

; Vectorize-Vars Expressions
(define (vectorize-vars-exp exp)
  (match exp
    ; If it's a set!ed arg-var we need to give it its new name and vector-ref it
    [v #:when (and (symbol? v) (member v arg-vars) (member v set!ed-vars)) `(vector-ref ,(lookup v arg-var-env) 0)]

    ; If it's a set!ed regular var we need to vector-ref it
    [v #:when (and (symbol? v) (member v set!ed-vars)) `(vector-ref ,v 0)]
    [(? terminal?) exp]

    ; set!
    [`(set! ,v ,e)
     
     `(vector-set! ,(if (member v arg-vars)
                        (lookup v arg-var-env)
                        v) 0 ,(vectorize-vars-exp e))]

    ; Let
    [`(let ((,var ,e)) ,body)

     (define vectorized-e (vectorize-vars-exp e))
     (define vectorized-body (vectorize-vars-exp body))
     
     (if (member var set!ed-vars)
         `(let ((,var (vector ,vectorized-e))) ,vectorized-body)
         `(let ((,var ,vectorized-e)) ,vectorized-body))]

    ; Lambda
    [`(lambda (,args ...) ,body)

     (define vectorized-body (vectorize-vars-exp body))

     ; TODO: add in initializing lets for set!ed args
     (define new-body (initialize-vectors args vectorized-body))

     `(lambda (,@args) ,new-body)]

    ; If
    [`(if ,cnd ,thn ,els)
     `(if ,(vectorize-vars-exp cnd) ,(vectorize-vars-exp thn) ,(vectorize-vars-exp els))]

    [`(,exps ...)
     `(,@(map vectorize-vars-exp exps))]
    
    ))

;;;;;;;;;;;;;;;;;;;;;;
; initialize vectors ;
;;;;;;;;;;;;;;;;;;;;;;
(define (initialize-vectors args body)
  (define lets '())

  (for ([arg args])
    
    ; If the arg is later set!ed
    (if (member arg set!ed-vars)
        
        ; generate a let for the arg
        (set! lets (cons `(let ((,(lookup arg arg-var-env) (vector ,arg)))
                            placeholder)
                         lets))

        (void)))

  (insert-lets lets body))

; takes a list of lets
; and inserts the lets sequentially into each other.
(define (insert-lets lets body)
  (define resulting-expression `placeholder)

  (for ([let (append lets `(,body))])
    (set! resulting-expression (insert-into-body resulting-expression let)))

  resulting-expression)

; inserts an expression into the body of another
; note: only works for lets and body of lets
(define (insert-into-body enclosing enclosed)
  (match enclosing
    [`placeholder enclosed]
    [`(let ((,v ,e)) ,body)
     `(let ((,v ,e)) ,(insert-into-body body enclosed))]))

;;;;;;;;;;;;;;;;;;;;
; Global Variables ;
;;;;;;;;;;;;;;;;;;;;
(define set!ed-vars '())
(define arg-var-env '())
(define arg-vars '())