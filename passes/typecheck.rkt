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

; Traverses through a list of defines, and returns an environment
; containing the types of all functions from the defines
; This allows functions to reference other functions
(define (functions-env defs)
  (define env '())
  (for ([def defs])
    (match def
      [`(define (,name ,args ...) ,body)
       
       (define function-type `(,@(map (lambda (arg) `Any) args) -> Any))
       (set! env (cons (cons name function-type) env))] ;update env with that function's type
      ))
  env)

;;;;;;;;;;;;;;;;;;
; Handle Defines ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                                        ;
; Sometimes there will be recursion/mutual recursion.    ;
; When passing over the functions, we will try to get    ;
; their types. Some of them will fail, because they rely ;
; on a function whose type we don't have yet. For these, ;
; we will continue to run our function, until they have  ;
; all had a chance to get a type.                        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (type-check-defines defs)

  (define function-env '())
  (define finished-defs '())
  (define unfinished-defs defs)

  (for ([num (range 0 (length defs))])
    
    (set! defs unfinished-defs)
  
    (for ([def defs])
      (with-handlers ([exn:fail? (lambda (exn) (void))])

       
        ;(displayln (append arg-env function-env))
        (define-values (new-define t-new-define) ((type-check function-env) def))
        (set! function-env (cons (cons (first (second def)) t-new-define) function-env))
        (set! finished-defs (cons new-define finished-defs))
        (set! unfinished-defs (remove def unfinished-defs)))
      )
    )

  (values finished-defs function-env))



(define (typecheck-R4 env)
  (lambda (e)
    (define recur (typecheck-R4 env))
    (match e
      [`(program ,exps ...)

       ; extract body and definitions
       (define body (last exps))
       (define defs (reverse (cdr (reverse exps))))

       ; recur on definitions
       (define-values (new-defs function-env) (type-check-defines defs))
       
       (define-values (new-body T) ((type-check function-env) body))
       `(program (type ,T) ,@new-defs ,new-body)]

      ;;;;;;;;;;;;;;;;;
      ; Trivial Stuff ;
      ;;;;;;;;;;;;;;;;;

      [(? fixnum?) (values `(inject ,e Integer) `Any)]
      [(? boolean?) (values `(inject ,e Boolean) `Any)]
      [(? symbol?) (values e (lookup e env))]
      [`(void) (values `(inject (void) Void) `Any)]
      [`(read) (values `(inject (read) Integer) `Any)]

      ;;;;;;;;;;;;
      ; R6 stuff ;
      ;;;;;;;;;;;;

      [`(inject ,(app recur new-e e-ty) ,ty)
       (cond
         [(equal? e-ty ty)
          (values `(inject ,new-e ,ty) `Any)]
         [else
          (error "inject expected ~a to have type ~a" e ty)])]
      [`(project ,(app recur new-e e-ty) ,ty)
       (cond
         [(equal? e-ty `Any)
          (values `(project ,new-e ,ty) ty)]
         [else
          (error "project expected ~a to have type Any" e)])]
      [`(,pred ,e) #:when (set-member? type-predicates pred)
       (define-values (new-e e-ty) (recur e))
       (cond
         [(equal? e-ty `Any)
          (values `(,pred ,new-e) `Boolean)]
         [else
          (error "predicate expected arg of type Any, not" e-ty)])]

      ;;;;;;;
      ; Let ;
      ;;;;;;;
      
      [`(let ([,x ,(app recur e T)]) ,body)
       (define new-env (cons (cons x T) env))
       (define-values (eb tb) ((type-check new-env) body))
       (values `(let ([,x ,e]) ,eb) tb)]

      ;;;;;;;;;;
      ; Lambda ;
      ;;;;;;;;;;
      
      [`(lambda (,args* ...) ,body)
       (define new-env (map (lambda (arg) (cons arg `Any)) args*))
       (define-values (e-body t-body) ((type-check (append new-env env)) body))
       (define lambda-type `(,@(map cdr new-env) -> ,t-body))
       (values `(inject (lambda (,@args*) ,e-body) ,lambda-type) lambda-type)]

      ;;;;;;;;;;
      ; Define ;
      ;;;;;;;;;;
      
      [`(define (,var ,args ...) ,body)

       (define function-type `(,@(map (lambda (arg) `Any) args) -> Any))
       (define arg-env (map (lambda (arg) (cons arg `Any)) args))
       (define body-env (append env arg-env)) ;(cons var function-type)))
       (define-values (new-body t-body) ((type-check body-env) body))
       (set! function-type `(,@(map (lambda (arg) `Any) args) -> ,t-body))

       (values `(define (,var ,@args) ,new-body)
               function-type)]

      ;;;;;;;;;;;;;;;;
      ; Vector Stuff ;
      ;;;;;;;;;;;;;;;;
      
      [`(vector ,(app recur e* t*) ...)
       (let ([t `(Vector ,@t*)])
         (values `(inject (vector ,@e*) ,t) t))]
      
      [`(vector-ref ,(app recur e t) ,i)
       (match t
         [`(Vector ,ts ...)
          (define-values (i^ t-i) (recur i))
          (let ([tmp1 (gensym 'vectorreftmp)]
                [tmp2 (gensym 'indextmp)])
            (values `(let ((,tmp1 (project ,e (Vectorof Any))))
                       (vector-ref ,tmp1 ,i)) `Any))
          ]
         [`(Vectorof ,t)
          (unless (exact-nonnegative-integer? i)
            (error `type-check "invalid index ~a" i))
          (values `(vector-ref ,e ,i) t)]
         [`Any
          (values `(vector-ref ,e ,i) t)])]
      
      [`(vector-set! ,(app recur e-vec^ t-vec) ,i
                     ,(app recur e-arg^ t-arg))
       (match t-vec
         [`(Vector ,ts ...)
          (let ([tmp1 (gensym 'vectorsetteetmp)]
                [tmp2 (gensym 'indextmp)]
                [tmp3 (gensym 'vectorsettertmp)])
            (values `(let ((,tmp1 (project ,e-vec^ (Vectorof Any))))
                       (let ((,tmp3 ,e-arg^))
                         (vector-set! ,tmp1 ,i ,tmp3))) `Any))]
         [`(Vectorof ,t)
          (unless (exact-nonnegative-integer? i)
            (error `type-check "invalid index ~a" i))
          (unless (equal? t t-arg)
            (error `type-check "type mismatch in vector-set! ~a ~a" t t-arg))
          (values `(vector-set! ,e-vec^ ,i ,e-arg^) `Void)]
         [`Any
          (values `(vector-set! ,e-vec^ ,i ,e-arg^) `Void)]
         [else (error `type-check
                      "expected a vector in vector-set!, not ~a" t-vec)])]

      [`(if ,(app recur cnd-e cnd-T) ,(app recur thn-e thn-T) ,(app recur els-e els-T))
           (values `(if (eq? ,cnd-e (inject #f Boolean)) ,els-e ,thn-e) `Any)]

      ;;;;;;;;;;;;;;
      ; Handle Ops ;
      ;;;;;;;;;;;;;;

      [`(,op ,args ...)
       (match op

         ; Comparison operations with two arguments
         [(? (lambda (op) (member op cmp-syms)))
          (define-values (e-arg1 t-arg1) (recur (first args)))
          (define-values (e-arg2 t-arg2) (recur (second args)))
          (cond
            [(equal? `eq? op)
             (values `(inject (eq? ,e-arg1 ,e-arg2) Boolean) `Any)]
            [else
             (values `(inject (,op (project ,e-arg1  Integer) (project ,e-arg2 Integer)) Boolean) `Any)])]

         ; Boolean operations with one argument
         [(? (lambda (op) (member op bool-syms-monadic)))
          (define-values (e-arg t-arg) (recur (first args)))
          (define tmp (gensym 'nottmp))
          (values `(let ((,tmp ,e-arg))
                     (if (eq? ,tmp (inject #f Boolean))
                         (inject #t Boolean)
                         (inject #f Boolean))) `Any)]
         
         ; Boolean operations with two arguments
         [(? (lambda (op) (member op bool-syms-biadic)))
          (define-values (e-arg1 t-arg1) (recur (first args)))
          (define-values (e-arg2 t-arg2) (recur (second args)))
          (define tmp (gensym 'andortmp))
          (cond
            [(equal? `or  op) (values `(let ((,tmp ,e-arg1))
                                         (if (eq? ,tmp (inject #f Boolean))
                                             ,e-arg2
                                             ,tmp)) `Any)]
            [(equal? `and op) (values `(let ((,tmp ,e-arg1))
                                         (if (eq? ,tmp (inject #f Boolean))
                                             ,tmp
                                             ,e-arg2)) `Any)])]

         ; Arithmetic operations with one argument
         [(? (lambda (op) (member op arith-syms-monadic))) ; -
          (define-values (e-arg t-arg) (recur (first args)))
          (values `(inject (,op (project ,e-arg Integer)) Integer) `Any)]
         
         ; Arithmetic operations with two arguments
         [(? (lambda (op) (member op arith-syms-biadic))) ; +
          (define-values (e-arg1 t-arg1) (recur (first args)))
          (define-values (e-arg2 t-arg2) (recur (second args)))
          (values `(inject (,op (project ,e-arg1 Integer) (project ,e-arg2 Integer)) Integer) `Any)]

         ; User defined function as operator
         [else
          (define-values (e-op t-op) (recur op))
          (define-values (e-ops t-ops) (map2 recur args))
          (values `((project ,e-op ,t-op) ,@e-ops) (match t-op
                                                     [`(,args ... -> ,output) output]
                                                     [else t-op]))])]

      ;[`(,op ,(app recur n1 t1) ,(app recur n2 t2)) #:when (member op arith-syms-biadic)
      ;               (if (and (equal? t1 `Integer) (equal? t2 `Integer))
      ;                   (values `(has-type (,op ,n1 ,n2) Integer) `Integer)
      ;                   (error `typecheck-R4 "~a expects integer arguments" op))]

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
      ;         (error `type-check "~a expects integer arguments (or of the same type if eq?)" op))]
      
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