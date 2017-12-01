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


(define (convert-closures e)
  ; Stores the new top level defines made from lambdas as they are created.
  (define new-defines '())

  ; Stores the names of top level functions (so that when we find free var-
  ; -iables we can consider function names bound.
  (define f-list '())

  ; Counts the number of lambdas converted to top level defines for the
  ; purpose of creating names.
  (define lambda-counter 0)

  (match e
    [`(program ,type ,exps ...)
     ; extract the definitions and body
       (define body (last exps))
       (define defs (reverse (cdr (reverse exps))))

       ; make an environment? what is the purpose of the environment
       (define new-env (make-typed-f-list defs)) ; add function names to the environment
       (set! f-list (make-f-list defs))
       (set! defs (map (lambda (def) (convert def new-env)) defs)) ; convert closures within functions
       (define converted-body (convert body new-env)) ; convert body of program
       `(program ,type ,@defs ,@new-defines ,converted-body)])

  ; converts an expression in R5 to an expression in R4
  (define (convert exp env)
    (match exp
      
      ; symbols/booleans/numbers remain the same
      [`(has-type ,v ,t) #:when (terminal? v) exp]

      ; lambdas are converted to top level defines.
      [`(has-type (lambda (,args* ...) ,body) ,type)

       ; create a name for the lambda
       (define lambda-name (string->symbol (string-append "lambda" (number->string lambda-counter))))

       ; add the new lambda name to list of top level define names
       (set! f-list (cons lambda-name f-list))

       ; Create an environment for the purpose of finding free variables. When entering the lambda, the
       ; bound variables are function names (since they are global) and the name of all the arguments to
       ; the lambda.
       (define new-env (foldr cons f-list (map (lambda (arg) (match arg [`(has-type ,v ,t) v])) args*)))

       ; recur on the body with the new-env
       ; TODO: this doesn't make sense... why are we using new-env here???
       (define new-body (convert body new-env))

       ; find the free variables in the body of the lambda. (for the purpose of loading them in the new lambda
       ; with a series of lets.
       (define free-vars ((find-free-vars new-env) body))

       ; create a new top level define for this lambda, and add it to the list of all the other ones we've made.
       (set! new-defines (cons (make-define `(has-type (lambda (,@args*) ,new-body) ,type) lambda-name free-vars) new-defines))

       ; replace the spot we found the lambda with a vector containing a function-ref to the new top-level function name,
       ; and all the free variables within the lambda.
       `(has-type (vector (has-type (function-ref ,lambda-name) ,(update-type type)) ,@free-vars) (Vector ,(update-type type) ,@(map third free-vars)))
       ]

      ; function application must be changed as follows:
      ; all function-refs have been converted to vectors
      ; with functions in the first slot and free variables
      ; in the others. We must apply that first item in the
      ; closure
      [`(has-type (app ,closure ,es* ...) ,type)
       ; generate a variable to store the closure
       (define tmp-f `(has-type ,(gensym 'closure) (Vector ,(third closure))))
       `(has-type (let ([,(second tmp-f) ,(convert closure env)])
                    (has-type
                     ; apply the first thing in the closure to the closure and the rest of the arguments
                     (app (has-type (vector-ref ,tmp-f (has-type 0 Integer)) (Vector ,(third closure)))
                          ,tmp-f
                          ,@(map (lambda (e) (convert e env)) es*)) ,type)) ,type)]

      ; function-refs become vectors
      [`(has-type (function-ref ,f) ,type)
       `(has-type (vector (has-type (function-ref ,f) ,type)) (Vector ,type))]

      ; lets are handled standardly.
      [`(has-type (let ((,var ,e)) ,body) ,type)
       `(has-type (let ((,var ,(convert e env))) ,(convert body (cons `(has-type ,var (third e)) env))) ,type)]

      ; defines have a closure parameter added to them.
      [`(define ((has-type ,fn type) ,args* ...) ,body)
       `(define (,fn (has-type clos _) ,@args*) ,(convert body (append env args*)))]

      ; primitive operations are translated trivially.
      [`(has-type (,op ,args* ...) ,type)
       `(has-type (,op ,@(map (lambda (e) (convert e env)) args*)) ,type)]
      ))
  (convert e '()))

;;; Helpers ;;;

;; Make Defines ;;
(define (make-define lam lambda-name free-vars)
  (match lam
    [`(has-type (lambda (,args* ...) ,body) ,type)
     (define closure-name (gensym 'closure))
     `(define ((has-type ,lambda-name ,(update-type type)) (has-type ,closure-name _) ,@args*)
        ,(generate-lets free-vars body closure-name))]))

(define (generate-lets args body closure-name)
  (define i 1)
  (define lets '())
  (for ([arg args])
    (set! lets (cons `(has-type (let ((,arg (has-type (vector-ref (has-type ,closure-name _) (has-type ,i Integer)) ,(third arg)))) placeholder) ,(third arg)) lets))
    (set! i (add1 i)))
  (foldr insert-into-body body (reverse lets)))

(define (insert-into-body enclosing enclosed)
  (match enclosing
    [`(has-type (let ((,arg ,e)) ,b) ,type) #:when (equal? b 'placeholder)
                           `(has-type (let ((,(second arg) ,e)) ,enclosed) ,type)]
    [`(has-type (let ((,arg ,e)) ,b) ,type) `(has-type (let ((,(second arg) ,e)) ,(insert-into-body b enclosed)) ,type)]
    [else enclosed]))
;; End Make Defines ;;

; Adds an underscore to the start of a function type. The underscore represents the closure.
(define (update-type type)
  (match type
    [`(,pres ... -> ,post) `(_ ,@pres -> ,post)]))

; Returns the free variables within an expression
; (free variables are variables not bound by anything)
(define (find-free-vars env)
  (lambda (exp)
    (match exp
      ;[(? terminal?) '()]
      [`(has-type ,v ,t) #:when (symbol? v)
                         (if (member v env)
                             '()
                             `((has-type ,v ,t)))]
      [`(has-type ,v ,t) #:when (terminal? v) '()]
      [`(has-type (let ((,var ,e)) ,body) ,type)
       (append ((find-free-vars (cons var env)) e) ((find-free-vars (cons var env)) body))]
      [`(has-type (lambda (,args* ...) ,body) ,type)
       (define new-env (foldr cons env (map (lambda (arg) (match arg [`(has-type ,v ,t) v])) args*)))
       ((find-free-vars new-env) body)]
      [`(has-type (,op ,args* ...) ,type)
       (foldr append '() (map (find-free-vars env) args*))]
      )))