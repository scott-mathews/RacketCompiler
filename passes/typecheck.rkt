#lang racket

(require racket/trace)

; Import provided
(require "../utilities.rkt")

; Import custom
(require "../utilities/helpers.rkt")
(require "../utilities/constants.rkt")

; Export pass
(provide type-check)

;;; === Type Checker === ;;;

; Traverses through a list of defines, and returns and environment
; containing the types of all functions from the defines
; This allows functions to reference other functions
(define (functions-env defs)
  (define env '()) 
  (for ([def defs])
    (match def
      [`(define (,name ,args* ...) : ,type ,body)
       (define input-types '())
       (for ([arg args*]) ; add each argument's type to a list
         (match arg
           [`[,name : ,type] (set! input-types (cons type input-types))]))
       (set! input-types (reverse input-types)) ; reverse input-types (because it's backwards from our traversal
       (define function-type `(,@input-types -> ,type))
       (set! env (cons (cons name function-type) env))] ;update env with that function's type
      ))
  env)

(define (typecheck-R4 env)
  (lambda (e)
    (define recur (typecheck-R4 env))
    (match e

      ; Program
      [`(program ,exps ...)
       (define body (last exps))
       (define defs (reverse (cdr (reverse exps))))
       (define new-defs '())
       (define new-env (functions-env defs))
       (for ([def defs])
         (define-values (fexp output-env) ((typecheck-R4 new-env) def))
         (set! new-env (cons output-env new-env))
         (set! new-defs (cons fexp new-defs)))
       (define-values (new-body T) ((typecheck-R4 new-env) body))
       `(program (type ,T) ,@new-defs ,new-body)]

      ; Trivial cases
      [(? fixnum?) (values `(has-type ,e Integer) `Integer)]
      [(? boolean?) (values `(has-type ,e Boolean) `Boolean)]
      [(? symbol?) (values `(has-type ,e ,(lookup e env)) (lookup e env))]
      [`(void) (values `(has-type (void) Void) `Void)]
      [`(read) (values `(has-type (read) Integer) `Integer)]

      ; Let
      [`(let ([,x ,(app recur e T)]) ,body)
       (define new-env (cons (cons x T) env))
       (define-values (eb tb) ((type-check new-env) body))
       (values `(has-type (let ([,x ,e]) ,eb) ,tb) tb)]

      ; If
      [`(if ,(app recur cnd-e cnd-T) ,(app recur thn-e thn-T) ,(app recur els-e els-T))
       (if (equal? cnd-T `Boolean)
           (if (equal? thn-T els-T)
               (values `(has-type (if ,cnd-e ,thn-e ,els-e) ,thn-T) thn-T)
               (error `type-check "both branches of if must be same type"))
           (error `type-check "if expects a boolean in the conditional"))]

      ; Lambda
      [`(lambda: (,args* ...) : ,type ,body)
       (define arg-env (get-lambda-env e env))
       (define lam-type (get-lambda-type e))
       (define new-args (update-arg-format args*))
       (define-values (eb tb) ((type-check arg-env) body))
       (values `(has-type (lambda (,@new-args) ,eb) ,lam-type)
               lam-type)]

      ; Define
      [`(define (,var ,args* ...) : ,type ,body)
       (define input-types '())
       (define new-env env)
       (define new-args '())
       (for ([arg args*]) ; add each argument's type to a list
         (match arg
           [`[,name : ,type] (set! input-types (cons type input-types)) ; add input-type
                             (set! new-env (cons (cons name type) new-env))
                             (set! new-args (cons `(has-type ,name ,type) new-args))]))
       (set! input-types (reverse input-types)) ; reverse input-types (because it's backwards from our traversal
       (define function-type `(,@input-types -> ,type)) ; eg. ((Vector Integer) Integer) -> Integer
       (define output-env (cons (cons var function-type) env))
       (set! new-env (cons (cons var function-type) new-env))
       ;(set! output-env (cons (cons var function-type env)))
       (define-values (eb tb) ((typecheck-R4 new-env) body))
       (if (equal? tb type)
           (values `(define ((has-type ,var ,function-type) ,@(reverse new-args)) ,eb) (cons var function-type)) ; return has-typed expression, type, and function name
           (error `type-check "expected body to have type ~a but found type ~a" type tb))
       ]

      ; Vectors
      [`(vector ,(app recur e* t*) ...)
       (let ([t `(Vector ,@t*)])
         (values `(has-type (vector ,@e*) ,t) t))]

      [`(vector-ref ,(app recur e t) ,i)
       (match t
         [`(Vector ,ts ...)
          (unless (and (exact-nonnegative-integer? i)
                       (i . < . (length ts)))
            (error `type-check "invalid index ~a" i))
          (let ([t (list-ref ts i)])
            (values `(has-type (vector-ref ,e (has-type ,i Integer)) ,t)
                    t))]
         [else (error `type-check "expected a vector in vector-ref, not ~a" t)])]

      [`(vector-set! ,(app recur e-vec^ t-vec) ,i
                     ,(app recur e-arg^ t-arg))
       (match t-vec
         [`(Vector ,ts ...) (unless (and (exact-nonnegative-integer? i) (i . < . (length ts)))
                              (error `type-check "invalid index ~a" i))
                            (unless (equal? (list-ref ts i) t-arg)
                              (error `type-check "type mistmatch in vector-set! ~a ~a" (list-ref ts i) t-arg))
                            (values `(has-type (vector-set! ,e-vec^
                                                            (has-type ,i Integer)
                                                            ,e-arg^) Void) `Void)]
         [else (error `type-check "expected a vector in vector-set!, not ~a" t-vec)])]


      ; Operations
      [`(,op ,(app recur args ts) ...)
       (cond
         [(member op arith-syms-biadic) (values `(has-type (inject (+ (has-type (project (first args) Integer) Integer)
                                                                      (has-type (project (second args) Integer) Integer)) Integer) Any) `Any)]
         [(member op arith-syms-monadic) (values `(has-type (inject (- (has-type (project (first args) Integer) Integer)) Integer) Any) `Any)]
         [(member op bool-syms-biadic) (let ([tmp (gensym 'booltmp)])
                                         (values `(has-type
                                                   (let ([,tmp (first args)])
                                                     (has-type
                                                      (if (has-type (inject (eq? ,tmp #f) Boolean) Any))
                                                      Any))
                                                   Any)
                                                 `Any))]
         )]
      

      ;[`(,op ,(app recur n1 t1) ,(app recur n2 t2)) #:when (member op arith-syms-biadic)
      ;               (if (and (equal? t1 `Integer) (equal? t2 `Integer))
      ;                   (values `(has-type (,op ,n1 ,n2) Integer) `Integer)
      ;                   (error `typecheck-R4 "~a expects integer arguments" op))];

      ;[`(,op ,(app recur n t)) #:when (member op arith-syms-monadic)
      ;                                    (if (equal? t `Integer)
      ;                                        (values `(has-type (,op ,n) ,t) `Integer)
      ;                                        (error `typecheck-R4 "~a expects integer arguments" op))]

      

      ;[`(not ,(app recur e T))
      ; (match T
      ;   [`Boolean (values `(has-type (not ,e) ,T) 'Boolean)]
      ;   [else (error `type-check "`not` expects a boolean" e)])]

      

      ;[`(,op ,(app recur e1 b1) ,(app recur e2 b2)) #:when (member op bool-syms-biadic)
      ;     (if (and (equal? b1 `Boolean) (equal? b2 `Boolean))
      ;         (values `(has-type (,op ,e1 ,e2) Boolean) 'Boolean)
      ;         (error `type-check "~a expects boolean arguments" op))]

      ;[`(,op ,(app recur e1 t1) ,(app recur e2 t2)) #:when (member op cmp-syms)
      ;     (define accepted-types (if (equal? 'eq? op) '(Boolean Integer) '(Integer)))
      ;     (define vector-type (if (list? t1) (member 'Vector t1) #f))
      ;     (if (and (or vector-type (member t1 accepted-types)) (or vector-type (member t2 accepted-types)) (equal? t1 t2))
      ;         (values `(has-type (,op ,e1 ,e2) Boolean) `Boolean)
      ;        (error `type-check "~a expects integer arguments (or of the same type if eq?)" op))]
      
      ;[`(,fname ,(app recur e* t*) ...) #:when (member fname (map car env)) 
      ;                                  (define signature (lookup fname env))
      ;                                  (define-values (arg-types output-type) (match signature [`(,args ... -> ,output) (values args output)]))
      ;                                  (for ([t t*] [arg-t arg-types])
      ;                                    (if (equal? t arg-t)
      ;                                        "pass"
      ;                                        (error `type-check "Argument types ~a did not match function signature ~a" t* arg-types)))
      ;                                  (values `(has-type ((has-type ,fname ,(lookup fname env)) ,@e*) ,output-type) output-type)]

      
      
      
      
      ;[`(,(app recur op op-t) ,(app recur args ts) ...)
      ; (define output-type (function-type op-t))
      ; (if (equal? (length args) (length (match op-t [`(,inputs ... -> ,output) inputs])))
      ;     "pass"
      ;     (error `type-check "argument arity exception"))
      ; (values `(has-type (,op ,@args) ,output-type) output-type)]
      )))

(define type-check typecheck-R4)

;;; End Type Checker ;;;