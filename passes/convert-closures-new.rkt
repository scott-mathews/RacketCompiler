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
     `(define (,fn closure ,@args)
        ,converted-body)]))

; convert expressions
(define (convert-exp e)
  ; extract type from expression
  
    (match e

      ;;;;;;;;;;;;;;;;;;
      ; Inject/Project ;
      ;;;;;;;;;;;;;;;;;;
      [`(inject ,e ,t) `(inject ,(convert-exp e) ,t)]
      [`(project ,e ,t) `(inject ,(convert-exp e) ,t)]
      
      ; terminals remain unchanged
      [t #:when (terminal? t) t]

      ; function-refs are put into vectors
      [`(function-ref ,name)
       ; make sure we take note that we are putting the function-ref in a vector
       ;(set! updated-expression-type `(Vector ,updated-expression-type))
       
       `(inject (vector (inject (function-ref ,name) (Any -> Any))) (Vector (Any -> Any)))
       ]
          
      ;;;;;;;;;;;;;;;;;;;;;;;;
      ;;; Handling Lambdas ;;;
      ;;;;;;;;;;;;;;;;;;;;;;;;
      [`(lambda (,args ...) ,body)

       ; name e.g. (has-type (function-ref lambda1) (_ Integer -> Integer))
       ; free-vars e.g. `( (has-type y134 Integer) (has-type b343 Boolean) )
       (define-values (name free-vars) (make-define-from-lambda e))

           
       ; the actual return is a vector containing a reference to the new lambda function
       ; and the free variables passed into that function
       `(inject (vector ,name ,@free-vars) (Vector (Any -> Any) ,@(map (lambda (free-var) `Any) free-vars)))
       ]

      ; In an application, the applied must be a closure, and the first item
      ; of that closure is the function which we are trying to apply.
      [`(app ,exp ,exps ...)

       (define closure-expression (convert-exp exp))
       (define converted-arguments (map convert-exp exps))
           
       ; make a new variables to store the closure
       (define closure-variable (gensym 'appclos))

       ;(displayln closure-expression)
       ; update the output type based on the new output type
       ;(set! updated-expression-type
       ;      (match (second (third closure-expression))
       ;        [`(,input-types ... -> ,output-type) output-type]))
           
           
       `(let ((,closure-variable ,closure-expression))
          (app (project (vector-ref ,closure-variable 0) (Any -> Any))
                         ,closure-variable
                         ,@converted-arguments))
       ]

      ; Lets are trivially recursed upon
      [`(let ((,name ,exp)) ,body)

       (define converted-body (convert-exp body))
           
           
       `(let ((,name ,(convert-exp exp))) ,converted-body)]

      ; Ifs are trivially recursed upon
      [`(if ,cnd ,thn ,els)
       `(if ,(convert-exp cnd) ,(convert-exp thn) ,(convert-exp els))
       ]

      ; Primitive ops on args are trivially recursed upon
      [`(,op ,args ...)
       `(,op ,@(map convert-exp args))]
      ))

;;;;;;;;;;;;;;;;;;;;
; Building Defines ;
;   From Lambdas   ;
;;;;;;;;;;;;;;;;;;;;
(define (make-define-from-lambda lam)
  (match lam
    [`(lambda (,args ...) ,body)

     ; process the body of the lambda
     (define processed-body (convert-exp body))
     
     ; make a name for the new define
     (define name (get-lambda-name))

     ; make a list of bound variables
     (define arg-bound-vars args)
     (define initial-bound-vars (append function-names arg-bound-vars))
     ; find free variables in the lambdas body
     ; free-vars e.g. `( (has-type x123 Integer) (x345 Vector) )
     (define free-vars ((find-free-vars initial-bound-vars) processed-body))

     ; make the define body for the new function
     (define define-body (insert-lets (make-lambda-lets free-vars) processed-body))

     ; Put together the final define!
     (define new-define
       `(define (,name closure ,@args)
          ,define-body))

     ; Add that define to the global list tracking new defines
     (set! lambda-defines (cons new-define lambda-defines))

     (values `(inject (function-ref ,name) (Any -> Any)) free-vars)]))

; Make a list of lets which assign closure stuff to free vars!!!!
(define (make-lambda-lets free-vars)
  (define lets '())
  (define vector-ctr 1)

  ; Make the lets for the free vars
  (for ([var free-vars])
    (set! lets (cons `(let ((,var (vector-ref closure ,vector-ctr)))
                        placeholder)           
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
    [`(let ((,v ,e)) ,body)
     `(let ((,v ,e)) ,(insert-into-body body enclosed))]))

; Returns the free variables within an expression
; (free variables are variables not bound by anything)
; env is the variables bound when entering the function
; (should always include top level function names
(define (find-free-vars env)
  (lambda (exp)
    (match exp
      [v #:when (symbol? v)
         (if (member v env)
             '()
             `(,v))]
      [v #:when (terminal? v) '()]
      [`(function-ref ,v) '()]
      [`(let ((,var ,e)) ,body)
       (append ((find-free-vars (cons var env)) e) ((find-free-vars (cons var env)) body))]
      [`(lambda (,args* ...) ,body)
       (define new-env (foldr cons env args*))
       ((find-free-vars new-env) body)]
      [`(,op ,args* ...)
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