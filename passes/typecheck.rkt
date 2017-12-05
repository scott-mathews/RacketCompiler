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

; Handle Defines ;

(define (type-check-defines defs)
  (define function-env '())
  (define finished-defs '())
  (define unfinished-defs defs)

  (for ([num (range 0 (length defs))])

    (set! defs unfinished-defs)

    (for ([def defs])
      ;(with-handlers ([exn:fail? (lambda (exn) (displayln exn))])
        (define-values (new-define t-new-define) ((type-check function-env) def))
        (set! function-env (cons (cons (first (second def)) t-new-define) function-env))
        (set! finished-defs (cons new-define finished-defs))
        (set! unfinished-defs (remove def unfinished-defs));)
      )
    )
  
  (values finished-defs function-env))


(define (typecheck-R4 env)
  (lambda (e)
    (define recur (typecheck-R4 env))
    (match e

      ; Program
      [`(program ,exps ...)
       (define body (last exps))
       (define defs (reverse (cdr (reverse exps))))
       
       (define-values (new-defs function-env)
         (type-check-defines defs))
       
       (define-values (new-body T) ((typecheck-R4 function-env) body))
       `(program (type ,T) ,@new-defs ,new-body)]

      ; Trivial cases
      [(? fixnum?) (values `(has-type (inject (has-type ,e Integer) Integer) Any) `Any)]
      [(? boolean?) (values `(has-type (inject (has-type ,e Boolean) Boolean) Any) `Any)]
      [(? symbol?) (values `(has-type ,e ,(lookup e env)) (lookup e env))]
      [`(void) (values `(has-type (inject (has-type (void) Void) Void) Any) `Any)]
      [`(read) (values `(has-type (inject (has-type (read) Integer) Integer) Any) `Any)]

      ; Project/Inject
      [`(inject ,(app recur new-e e-ty) ,ty)
       (cond
         [(equal? e-ty ty)
          (values `(inject ,new-e ,ty) `Any)]
         [else (error "inject wrong type")])]
      [`(project ,(app recur new-e e-ty) ,ty)
       (cond
         [(equal? e-ty `Any)
          (values `(has-type (project ,new-e ,ty) ,ty) ty)]
         [else (error "project wrong type")])]

      ; Type Predicates
      [`(,pred ,e) #:when (set-member? type-predicates pred)
                   (define-values (new-e e-ty) (recur e))
                   (cond
                     [(equal? e-ty `Any)
                      (values `(,pred ,new-e) `Boolean)]
                     [else (error "predicate needs arg of type any")])]

      ; Let
      [`(let ([,x ,(app recur e T)]) ,body)
       (define new-env (cons (cons x T) env))
       (define-values (eb tb) ((type-check new-env) body))
       (values `(has-type (let ([,x ,e]) ,eb) ,tb) tb)]

      ; If
      [`(if ,(app recur cnd-e cnd-T) ,(app recur thn-e thn-T) ,(app recur els-e els-T))
       (values `(has-type (if (has-type (eq? ,cnd-e (has-type (inject (has-type #f Boolean) Boolean) Any)) Boolean) ,els-e ,thn-e) ,thn-T) thn-T)]

      ; Lambda
      [`(lambda (,args* ...) ,body)
       (define arg-env (get-lambda-env e env))
       
       (define new-args (update-arg-format args*))
       (define-values (eb tb) ((type-check arg-env) body))

       (define lam-type `(,@(map (lambda (arg) `Any) args*) -> ,tb))
       (values `(has-type (inject (has-type (lambda (,@new-args) ,eb) ,lam-type) ,lam-type) ,lam-type)
               lam-type)
       ]

      ; Define

      [`(define (,var ,args ...) ,body)
       
       (define arg-env (map (lambda (arg) (cons arg `Any)) args))
       (define body-env (append env arg-env))
       (define-values (new-body t-body) ((type-check body-env) body))
       (define function-type `(,@(map (lambda (arg) `Any) args) -> ,t-body))
       (values `(define ((has-type ,var ,function-type) ,@(map (lambda (arg) `(has-type ,arg Any)) args)) ,new-body)
               function-type)]
      
      ;[`(define (,var ,args* ...) ,body)
      ; (define input-types '())
      ; (define new-env env)
      ; (define new-args '())
      ; (for ([arg args*]) ; add each argument's type to a list
      ;   (match arg
      ;     [name (set! input-types (cons `Any input-types))
      ;           (set! new-env (cons (cons name `Any) new-env))
      ;           (set! new-args (cons (cons name `Any) new-args))]
      ;     [`[,name : ,type] (set! input-types (cons type input-types)) ; add input-type
      ;                       (set! new-env (cons (cons name type) new-env))
      ;                       (set! new-args (cons `(has-type ,name ,type) new-args))]))
      ; (set! input-types (reverse input-types)) ; reverse input-types (because it's backwards from our traversal
      ; (define function-type `(,@input-types -> ,type)) ; eg. ((Vector Integer) Integer) -> Integer
      ; (define output-env (cons (cons var function-type) env))
      ; (set! new-env (cons (cons var function-type) new-env))
      ; ;(set! output-env (cons (cons var function-type env)))
      ; (define-values (eb tb) ((typecheck-R4 new-env) body))
      ; (if (equal? tb type)
      ;     (values `(define ((has-type ,var ,function-type) ,@(reverse new-args)) ,eb) (cons var function-type)) ; return has-typed expression, type, and function name
      ;     (error `type-check "expected body to have type ~a but found type ~a" type tb))
      ; ]

      ; Vector Operations
      [`(vector ,(app recur e* t*) ...)
       (let ([t `(Vector ,@t*)])
         (values `(has-type (inject (has-type (vector ,@e*) ,t) ,t) ,t) t))]

      [`(vector-ref ,(app recur e t) ,i)
       (match t
         [`(Vector ,ts ...)
          (unless (and (exact-nonnegative-integer? i)
                       (i . < . (length ts)))
            (error `type-check "invalid index ~a" i))
          (let ([t (list-ref ts i)])
            (values `(has-type (vector-ref (has-type (project ,e (Vector ,@ts)) (Vector ,@ts)) (has-type ,i Integer)) ,t)
                    t))]
         [`(Vectorof ,t)
          (unless (exact-nonnegative-integer? i)
            (error `type-check "invalid index to vector-ref"))
          (values `(has-type (vector-ref ,e (has-type ,i Integer)) ,t) t)]
         [`Any
          (values `(has-type (vector-ref ,e (has-type ,i Integer)) Any) t)]
         [else (error `type-check "expected a vector in vector-ref, not ~a" t)])]

      [`(vector-set! ,(app recur e-vec^ t-vec) ,i
                     ,(app recur e-arg^ t-arg))
       (match t-vec
         [`(Vector ,ts ...) (unless (and (exact-nonnegative-integer? i) (i . < . (length ts)))
                              (error `type-check "invalid index ~a" i))
                            (unless (equal? (list-ref ts i) t-arg)
                              (error `type-check "type mistmatch in vector-set! ~a ~a" (list-ref ts i) t-arg))
                            (values `(has-type (vector-set! (has-type (project ,e-vec^ ,t-vec) ,t-vec)
                                                            (has-type ,i Integer)
                                                            ,e-arg^) Void) `Void)]
         [`(Vectorof ,t)
          (unless (exact-nonnegative-integer? i)
            (error `type-check) "invalid index to vector-set!")
          (values `(has-type (vector-set! ,e-vec^ (has-type ,i Integer) ,e-arg^) Void) `Void)]
         [`Any
          (values `(has-type (vector-set! ,e-vec^ (has-type ,i Integer) ,e-arg^) Void) `Void)]
         [else (error `type-check "expected a vector in vector-set!, not ~a" t-vec)])]


      ; Operations
      [`(,op ,(app recur args ts) ...)
       (cond

         ; +
         [(member op arith-syms-biadic) (values `(has-type (inject (has-type (+ (has-type (project ,(first args) Integer) Integer)
                                                                      (has-type (project ,(second args) Integer) Integer)) Integer) Integer) Any) `Any)]
         ; -
         [(member op arith-syms-monadic) (values `(has-type (inject (has-type (- (has-type (project ,(first args) Integer) Integer)) Integer) Integer) Any) `Any)]

         ; not
         [(equal? op `not) (values `(has-type (if (has-type (eq? ,(first args) (has-type (inject (has-type #f Boolean) Boolean) Any)) Boolean)
                                                  (has-type (inject (has-type #t Boolean) Boolean) Any)
                                                  ,(first args)) Any)
                                   `Any)]

         ; and
         [(equal? op `and) (let ([tmp (gensym 'booltmp)])
                             (values `(has-type
                                       (let ([,tmp ,(first args)])
                                         (has-type
                                          (if (has-type (eq? (has-type ,tmp ,(first ts)) (has-type (inject (has-type #f Boolean) Boolean) Any)) Boolean)
                                              (has-type ,tmp ,(first ts))
                                              ,(second args))
                                          Any))
                                       Any) `Any))]

         ; or
         [(equal? op `or) (let ([tmp (gensym 'booltmp)])
                            (values `(has-type
                                      (let ([,tmp ,(first args)])
                                        (has-type
                                         (if (has-type (eq? (has-type ,tmp ,(first ts)) (has-type (inject (has-type #f Boolean) Boolean) Any)) Boolean)
                                             ,(second args)
                                             (has-type ,tmp ,(first ts)))
                                         Any))
                                      Any) `Any))]
         ; eq?
         [(equal? op `eq?) (values `(has-type (inject (has-type (eq? ,(first args) ,(second args)) Boolean) Boolean) Any) `Any)]

         ; >/</<=/>=
         [(member op cmp-syms) (values `(has-type (inject (,op (has-type (project ,(first args) Integer) Integer) (has-type (project ,(second args) Integer) Integer)) Boolean) Any)
                                       `Any)]

         ; applying user defined function
         [else
          (define-values (op-e op-t) (recur op))
          ; don't inject the function yet. Let convert-closures handle that
          (values `(has-type (,op-e ,@args) ,op-t) (last op-t))]
         
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