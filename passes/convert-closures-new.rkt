#lang racket

(require "../utilities/helpers.rkt")

(provide convert-closures)

;;; === Convert Closures === ;;;
; Converts the lambdas in an   ;
; expression into top-level    ;
; defines. Also converts all   ;
; top level defines to take a  ;
; closure parameter (which co- ;
; -ntains the values for the   ;
; free variables within the    ;
; define. Finally, all functi- ;
; -on references are converted ;
; to vectors (with their clos- ;
; -ures and themselves) and    ;
; applications are turned into ;
; references to the vector     ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (convert-closures program)
  (match program
    [`(program ,type ,exps ...)
     ; extract the definitions and body from the program form
     (define body (last exps))
     (define defs (reverse (cdr (reverse exps))))

     ; update the global list of function names
     (set! function-names (make-f-list defs))
     (set! lambda-defines '())
     (set! lambda-counter 0)

     (define converted-body (convert-exp body))
     (define converted-defines (map convert-define defs))
     
     `(program ,type ,@converted-defines ,@lambda-defines ,converted-body)]))


;(define (fix-define-type def)
;  (match def
;    [`(define (,fn ,args ...) ,body)
;
;     (define input-types (map third args))
;     (define output-type (third body))
;
;     (if (function-type output-type)
;         (set! output-type `(Vector ,(fix-type output-type))))
;
;     ()
;     
;     `(define (,) ,body)]))


(define (convert-define def)
  (match def
    [`(define (,fn ,args ...) ,body)

     (define converted-body (convert-exp body))
     
     ; update the types in the function signature and process the body
     `(define ((has-type ,(second fn) ,(third converted-body)) (has-type closure Closure) ,@(map (lambda (arg) `(has-type ,(second arg) ,(fix-type (third arg)))) args))
        ,converted-body)]))

; convert expressions
(define (convert-exp e)
  ; extract type from expression
  (match e
    
    [`(has-type ,exp ,type)
     ; all expressions have their types fixed.
     (define updated-expression-type (fix-type type))
     
     `(has-type
       ,(match exp
          ; terminals remain unchanged
          [t #:when (terminal? t) t]

          ; function-refs are put into vectors
          [`(function-ref ,name)
           ; make sure we take note that we are putting the function-ref in a vector
           ;(set! updated-expression-type `(Vector ,updated-expression-type))
           
           `(vector (has-type (function-ref ,name) ,(second updated-expression-type)))
           ]
          
          ;;;;;;;;;;;;;;;;;;;;;;;;
          ;;; Handling Lambdas ;;;
          ;;;;;;;;;;;;;;;;;;;;;;;;
          [`(lambda (,args ...) ,body)

           ; name e.g. (has-type (function-ref lambda1) (_ Integer -> Integer))
           ; free-vars e.g. `( (has-type y134 Integer) (has-type b343 Boolean) )
           (define-values (name free-vars) (make-define-from-lambda e))

           (set! updated-expression-type `(Vector ,(third name) ,@(map (lambda (var) (third var)) free-vars)))
           
           ; the actual return is a vector containing a reference to the new lambda function
           ; and the free variables passed into that function
           `(vector ,name ,@free-vars)
           ]

          ; In an application, the applied must be a closure, and the first item
          ; of that closure is the function which we are trying to apply.
          [`(app ,exp ,exps ...)

           (define closure-expression (convert-exp exp))
           (define converted-arguments (map convert-exp exps))
           
           ; make a new variables to store the closure
           (define closure-variable `(has-type ,(gensym 'appclos) ,(third closure-expression)))

           ;(displayln closure-expression)
           ; update the output type based on the new output type
           ;(set! updated-expression-type
           ;      (match (second (third closure-expression))
           ;        [`(,input-types ... -> ,output-type) output-type]))
           
           
           `(let ((,(second closure-variable) ,closure-expression))
              (has-type (app (has-type (vector-ref ,closure-variable (has-type 0 Integer)) ,(second (third closure-expression)))
                             ,closure-variable
                             ,@converted-arguments)
                        ,updated-expression-type))
           ]

          ; Lets are trivially recursed upon
          [`(let ((,name ,exp)) ,body)

           (define converted-body (convert-exp body))
           
           (set! updated-expression-type (third converted-body))
           
           `(let ((,name ,(convert-exp exp))) ,converted-body)]

          ; Ifs are trivially recursed upon
          [`(if ,cnd ,thn ,els)
           `(if ,(convert-exp cnd) ,(convert-exp thn) ,(convert-exp els))
           ]

          ; Primitive ops on args are trivially recursed upon
          [`(,op ,args ...)
           `(,op ,@(map convert-exp args))]
          )

       ,updated-expression-type)]))

;;;;;;;;;;;;;;;;;;;;
; Building Defines ;
;   From Lambdas   ;
;;;;;;;;;;;;;;;;;;;;
(define (make-define-from-lambda lam)
  (match lam
    [`(has-type (lambda (,args ...) ,body) ,type)

     ; process the body of the lambda
     (define processed-body (convert-exp body))
     
     ; make a name for the new define
     (define name (get-lambda-name))

     ; make a list of bound variables
     (define arg-bound-vars (map (lambda (arg) (second arg)) args))
     (define initial-bound-vars (append function-names arg-bound-vars))
     ; find free variables in the lambdas body
     ; free-vars e.g. `( (has-type x123 Integer) (x345 Vector) )
     (define free-vars ((find-free-vars initial-bound-vars) processed-body))

     ; make the define body for the new function
     (define define-body (insert-lets (make-lambda-lets free-vars) processed-body))

     ; Put together the final define!
     (define new-define
       `(define ((has-type ,name ,(fix-type type)) (has-type closure Closure) ,@(map (lambda (arg) `(,(first arg) ,(second arg) ,(fix-type (third arg)))) args))
          ,define-body))

     ; Add that define to the global list tracking new defines
     (set! lambda-defines (cons new-define lambda-defines))

     (values `(has-type (function-ref ,name) ,(cadr (fix-type type))) free-vars)]))

; Make a list of lets which assign closure stuff to free vars!!!!
(define (make-lambda-lets free-vars)
  (define lets '())
  (define vector-ctr 1)

  ; Make the lets for the free vars
  (for ([var free-vars])
    (set! lets (cons `(has-type (let ((,(second var) (has-type (vector-ref (has-type closure Closure) (has-type ,vector-ctr Integer)) ,(third var))))
                        placeholder)
                                ; This is a guess. I may have to do more complex stuff to get the right type here
                                ,(fix-type (third var)))
                     lets))
    (set! vector-ctr (add1 vector-ctr)))

  lets)

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
    [`(has-type (let ((,v ,e)) ,body) ,type)
     `(has-type (let ((,v ,e)) ,(insert-into-body body enclosed)) ,type)]))

; Returns the free variables within an expression
; (free variables are variables not bound by anything)
; env is the variables bound when entering the function
; (should always include top level function names
(define (find-free-vars env)
  (lambda (exp)
    (match exp
      [`(has-type ,v ,t) #:when (symbol? v)
                         (if (member v env)
                             '()
                             `((has-type ,v ,t)))]
      [`(has-type ,v ,t) #:when (terminal? v) '()]
      [`(has-type (function-ref ,v) ,t) '()]
      [`(has-type (let ((,var ,e)) ,body) ,type)
       (append ((find-free-vars (cons var env)) e) ((find-free-vars (cons var env)) body))]
      [`(has-type (lambda (,args* ...) ,body) ,type)
       (define new-env (foldr cons env (map (lambda (arg) (second arg)) args*)))
       ((find-free-vars new-env) body)]
      [`(has-type (,op ,args* ...) ,type)
       (foldr append '() (map (find-free-vars env) args*))]
      )))


; updates a type as follows:
; Integer -> Integer
; Boolean -> Boolean
; Void -> Void
; (Vector types...) -> (Vector updated-types...)
; (types ... -> type) -> (_ updated-types... -> type)
(define (fix-type type)
  (match type
    ; Trivial types
    [`Integer type]
    [`Boolean type]
    [`Void    type]
    [`Closure type]

    ; Vectors are traversed through recursively
    [`(Vector ,types ...) `(Vector ,@(map fix-type types))]

    ; Every function takes a closure as its first variable
    ; therefore when we see a function type, we add Closure
    ; to represent the closure.
    [`(,input-types ... -> ,output-type) `(Vector ((Vector Closure) ,@(map fix-type input-types) -> ,(fix-type output-type)))]))




;;;;;;;;;;;;;;;;;;;;
; Global Variables ;
;;;;;;;;;;;;;;;;;;;;

; A list of the names of all top level defined
; functions.
; e.g. `( function0 function1 function2 )
(define function-names '())

; Stores the list of top level defines
; generated from the lambdas in the program
(define lambda-defines '())

; Returns a name for a new lambda
(define lambda-counter 0)
(define (get-lambda-name)
  (set! lambda-counter (add1 lambda-counter))
  (string->symbol (string-append "lambda" (number->string lambda-counter))))