#lang racket

(require "../utilities.rkt")

(require "../utilities/constants.rkt")
(require "../utilities/helpers.rkt")

(provide flatten)

;;; ==== Flatten === ;;;

;;; Helpers ;;;

; convert argument list (has-type ,v ,t) ... to (v . t)
(define (args->vars args)
  (map (lambda (arg)
         (match arg
           [`(has-type ,v ,t) (cons v t)]))
       args))

;; Get variable from list, or generate a temporary one
(define (genvar var)
  (if (empty? var) (gensym `tmp) (car var)))

; If args is empty, call f on just arg. Otherwise call f on the car of args.
(define (pass-optional1 f arg . args)
  (if (null? args) (f arg) (if (null? (car args)) (f arg) (f arg (car (car args))))))

; Check if an expression is a terminal one


;;; Flatten Itself ;;;

(define (flatten exp)
  (match exp
    [`(program ,type ,exps ...)
     (define body (last exps))
     (define defs (reverse (cdr (reverse exps))))
     (define new-defs '())
     (for ([def defs])
       (set! new-defs (cons (flatten-helper def) new-defs)))
     (define-values (flat-exp assignments vars) (flatten-helper body))
                   `(program ,(check-duplicate-vars (cleanup vars)) ,type (defines ,@(reverse new-defs)) ,@assignments (return ,flat-exp))]
    ))

(define (flatten-helper exp . var)
  (match exp
    [`(has-type (if ,cnd ,thn ,els) ,t) (define-values (flat-cnd assignments-cnd vars-cnd) (flatten-helper cnd))
                          (define v (gensym `tmp))
                          (define-values (flat-thn assignments-thn vars-thn) (flatten-helper thn))
                          (define-values (flat-els assignments-els vars-els) (flatten-helper els))
                          (values v `(,@assignments-cnd (if (eq? #t ,flat-cnd)
                                                            (,@assignments-thn (assign ,v ,flat-thn))
                                                            (,@assignments-els (assign ,v ,flat-els))))
                                  (cons (cons v (if (terminal? flat-cnd) `Boolean (lookup flat-thn vars-thn))) (append vars-cnd vars-thn vars-els)))]
    [`(has-type ,v ,t) #:when (symbol? v) (values v '() (list (cons v t)))]
    [`(has-type ,n ,t) #:when (fixnum? n) (values n '() '())]
    [`(has-type ,b ,t) #:when (boolean? b) (values b '() '())]

    
    [`(has-type (void) ,t) (define v (genvar var))
                           (values v `((assign ,v (void))) (list (cons v t)))]
    [`(global-value ,name) (define v (genvar var))
                           (values v `((assign ,v (global-value ,name))) (list (cons v `Integer)))]
    [`(has-type (collect ,n) Void) (define v (genvar var))
                                   (values `(void) `((collect ,n)) `())]; (list (cons v `Void)))]
    [`(has-type (allocate ,n ,t) ,type) (define v (genvar var))
                                       (values v `((assign ,v (allocate ,n ,t))) (list (cons v t)))]
    [`(has-type (read) ,t) (define v (genvar var))
             (values v (list `(assign ,v (read))) (list (cons v t)))]
    [`(has-type (not ,e) ,t) (define v (genvar var))
               (define-values (flat-exp assignments vars) (flatten-helper e))
               (values v `(,@assignments (assign ,v (not ,flat-exp))) (cons (cons v t) vars))]
    [`(has-type (function-ref ,label) ,t) (define v (genvar var))
                                          (values v `((assign ,v (function-ref ,label))) (list (cons v t)))]
    [`(has-type (app ,fn ,args* ...) ,t) (define v (genvar var))
                                         (define-values (fn-exp fn-assignments fn-vars) (flatten-helper fn))
                                         (define arg-exps '())
                                         (define arg-assignments '())
                                         (define arg-vars '())
                                         (for ([arg (reverse args*)])
                                           (define-values (arg-exp arg-ass arg-var) (flatten-helper arg))
                                           (set! arg-exps (cons arg-exp arg-exps))
                                           (set! arg-assignments (append arg-ass arg-assignments))
                                           (set! arg-vars (append arg-var arg-vars)))
                                         (values v `(,@fn-assignments ,@arg-assignments (assign ,v (app, fn-exp ,@arg-exps))) (cons (cons v t) (append arg-vars fn-vars)))]

    [`(define (,fn ,args* ...) ,body)
     (define-values (flat-exp assignments vars) (flatten-helper body))
     ; fix type annotations for function name and args
     (define new-fn (cadr fn))
     (define new-args* (map cadr args*))
     ; make sure vars contains all arguments as well.
     `(define (,new-fn ,@new-args*) ,(check-duplicate-vars (cleanup (append vars (args->vars args*)))) ,@assignments (return ,flat-exp))]
    [`(,ac (let ([,v (,ac2 ,e ,te)]) ,body) ,t)
     (define-values (flat-exp1 assignments1 vars1) (flatten-helper `(,ac2 ,e ,te)))
     (define-values (flat-exp2 assignments2 vars2) (flatten-helper body))
     (define v-type (cons v te))
     ;(cond
     ;  [(empty? assignments1) (set! vars1 (cons v-type vars1))
     ;                         (set! assignments1 (cons `(assign ,v ,flat-exp1) assignments1))]
     ;  [(equal? (caar assignments1) 'if) "pass"]
       ;[(equal? (car (third (car assignments1))) 'Vector) "pass"]
     ;  [else (set! assignments1 (append (reverse (cdr (reverse assignments1)))
     ;                                   (match (last assignments1)
     ;                                     [`(assign ,y ,stuff) `((assign ,v ,stuff))]
     ;                                     [else (last assignments1)])))
     ;        (set! vars1 (cons v-type (cdr vars1)))])
     (values flat-exp2 `(,@assignments1 (assign ,v ,flat-exp1) ,@assignments2) (append `(,v-type) vars1 vars2))
     ]
    ;[`(has-type (let ([,v (has-type ,e ,te)]) ,body) ,t)     
    ; (define-values (flat-exp1 assignments1 vars1)
    ;   (if (equal? '() var)
    ;       (flatten-helper `(has-type ,e ,te) v)
   ;        (flatten-helper `(has-type ,e ,te) (car var))))
     ;(define-values (flat-exp2 assignments2 vars2) (flatten-helper body))
     ;(values flat-exp2
     ;        (if (equal? v flat-exp1)
     ;            `(,@assignments1 ,@assignments2)
     ;            `(,@assignments1 (assign ,v ,flat-exp1) ,@assignments2))
     ;        ;(set->list (list->set (cons (cons v (flat-type v e)) (append vars1 vars2)))))]
     ;        (set->list (list->set (cons (cons v te) (append vars1 vars2)))))]
    [`(has-type (and ,e1 ,e2) ,t) (flatten-helper `(has-type (if ,e1 ,e2 (has-type #f Boolean)) Boolean))]
    [`(has-type (,op ,e1 ,e2) ,t) ;#:when (or (member op cmp-syms) (member op arith-syms-biadic))
                    (define v (genvar var))
                    ;(display (format "Type: ~a" (cons v t)))
                    (define-values (flat-exp1 assignments1 vars1) (flatten-helper e1))
                    (define-values (flat-exp2 assignments2 vars2) (flatten-helper e2))
                    (values v `(,@assignments1 ,@assignments2 (assign ,v (,op ,flat-exp1 ,flat-exp2))) (cons (cons v t) (append vars1 vars2)))]
    [`(has-type (,op ,e1 ,e2 ,e3) ,t) (define v (genvar var))
                                      (define-values (flat-exp1 assignments1 vars1) (flatten-helper e1))
                                      (define-values (flat-exp2 assignments2 vars2) (flatten-helper e2))
                                      (define-values (flat-exp3 assignments3 vars3) (flatten-helper e3))
                                      (values v `(,@assignments1 ,@assignments2 ,@assignments3 (assign ,v (,op ,flat-exp1 ,flat-exp2 ,flat-exp3))) (cons (cons v t) (append vars1 vars2 vars3)))]
    [`(has-type (- ,e) ,t) (define v (genvar var))
             (define-values (flat-exp assignments vars) (flatten-helper e))
             (values v `( ,@assignments (assign ,v (- ,flat-exp))) (cons (cons v t) vars))]
    
    ; Inject/Project
    [`(inject ,e ,t) (define v (genvar var))
                     (define-values (flat-e ass-e vars-e) (flatten-helper e))
                     (values v `(,@ass-e (assign ,v (inject ,flat-e ,t))) (cons (cons v t) vars-e))]
    [`(project ,e ,t) (define v (genvar var))
                      (define-values (flat-e ass-e vars-e) (flatten-helper e))
                      (values v `(,@ass-e (assign ,v (project ,flat-e ,t))) (cons (cons v t) vars-e))]
    
    [`(has-type (,op ,args* ...) ,t) (define v (genvar var))
                                     (define-values (flat-exps assignments vars) (map3 flatten-helper args*))
                                     (values v `(,@(values assignments) (assign ,v (,op ,@flat-exps))) (cons (cons v t) (foldr append '() vars)))]
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;   Duplicate Type Handling   ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; When we perform closure conv- ;
; ersion, we end up changing    ;
; some types in one place, but  ;
; not in other places. To fix   ;
; this problem, we take the     ;
; simpler approach of resolving ;
; type conflicts by choosin the ;
; longer type. This is because  ;
; when we mangle the types, we  ;
; never make them shorter. Only ;
; longer. Thus, the new/proper  ;
; type will be the longer one.  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (cleanup vars)
  ; first we get rid of any exact (var .type) duplicates
  (set! vars (set->list (list->set vars)))
  ; now we initialize an empty association list of vars
  (define new-vars '())
  ; we iterate through every variable
  (for ([var vars])
    (define found-type (lookup (car var) new-vars #f))
    ; if the variable is not yet in new-vars, add it in there
    ; otherwise we need to make sure new-vars has the type of
    ; whichever is longer, the currently inspected version of
    ; var's type, or looked-up version of var's type
    (if (and found-type (list? (cdr var)))
        (if (or (not (list? found-type)) (> (length (cdr var)) (length found-type)))
            (set! new-vars (cons var (remove (cons (car var) found-type) new-vars)))
            (void))
        (set! new-vars (cons var new-vars))))
  new-vars)

; Makes it so there is only one copy of each var
(define (check-duplicate-vars vars)
  (define names (set-copy (list->set (map car vars))))
  (for ([var vars])
    (if (set-member? names (car var))
        (let ()
          (set-remove! names (car var)))
        (error `flatten "found a duplicate var: ~a amongst ~a" var vars)))
  vars)