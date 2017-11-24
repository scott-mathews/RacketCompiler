#lang racket

(require "../utilities/helpers.rkt")

(provide convert-closures)

;;; === Convert Closures === ;;;

(define (convert-closures e)
  (define new-defines '())
  
  (define (convert exp env)
    (match exp
      ;[t #:when (terminal? t) t]
      [`(has-type ,v ,t) #:when (terminal? v) exp]
      [`(has-type (lambda (,args* ...) ,body) ,type)
       (define lambda-name (gensym 'lambda))
       (define new-env (foldr cons '() (map (lambda (arg) (match arg [`(has-type ,v ,t) v])) args*)))
       (define new-body (convert body new-env))
       (define free-vars ((find-free-vars new-env) body))
       (set! new-defines (cons (make-define `(has-type (lambda (,@args*) ,new-body) ,type) lambda-name free-vars) new-defines))
       `(has-type (vector (has-type (function-ref ,lambda-name) ,(update-type type)) ,@free-vars) (Vector ,(update-type type) ,@(map third free-vars)))
       ]
      [`(has-type (app ,e ,es* ...) ,type)
       (define tmp-f `(has-type ,(gensym 'fn) (Vector ,(third e))))
       `(has-type (let ([,(second tmp-f) ,(convert e env)])
                    (has-type (app (has-type (vector-ref ,tmp-f (has-type 0 Integer)) (Vector ,(third e))) ,tmp-f ,@(map (lambda (e) (convert e env)) es*)) ,type)) ,type)]
      [`(has-type (function-ref ,f) ,type)
       `(has-type (vector (has-type (function-ref ,f) ,type)) (Vector ,type))]
      [`(has-type (let ((,var ,e)) ,body) ,type)
       `(has-type (let ((,var ,(convert e env))) ,(convert body (cons `(has-type ,var (third e)) env))) ,type)]
      [`(define (,fn ,args* ...) ,body)
       `(define (,fn (has-type clos _) ,@args*) ,(convert body (append env args*)))]
      [`(has-type (,op ,args* ...) ,type)
       `(has-type (,op ,@(map (lambda (e) (convert e env)) args*)) ,type)]
      [`(program ,type ,exps ...)
       (define body (last exps))
       (define defs (reverse (cdr (reverse exps))))
       (define new-env (make-typed-f-list defs)) ; add function names to the environment
       (set! defs (map (lambda (def) (convert def new-env)) defs)) ; convert closures within functions
       (define converted-body (convert body new-env)) ; convert body of program
       `(program ,type ,@defs ,@new-defines ,converted-body)]))
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

; Adds an underscore to the start of a function type. The underscore represents the method.
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