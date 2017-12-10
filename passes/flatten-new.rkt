#lang racket

(provide flatten)

; Provided imports
(require "../utilities.rkt")

; Custom imports
(require "../utilities/constants.rkt")
(require "../utilities/helpers.rkt")


;;;;;;;;;;;;;;;;;;;
; Flatten Program ;
;;;;;;;;;;;;;;;;;;;
(define (flatten program)
  (match program
    [`(program ,type ,exps ...)
     ; Extract Body/Defines
     (define body (last exps))
     (define defines (reverse (cdr (reverse exps))))

     (define-values (flat-body stmts-body vars-body) (flatten-exp body))
     (define flat-defines (flatten-defines defines))

     `(program ,vars-body ,type (defines ,@flat-defines) ,@stmts-body (return ,flat-body))
     ]))


;;;;;;;;;;;;;;;;;;;
; Flatten Defines ;
;;;;;;;;;;;;;;;;;;;
(define (flatten-defines defines)
  (map flatten-define defines))


(define (flatten-define define)
  (match define
    [`(define (,fun ,args ...) ,body)

     ; Flatten the body of the define
     (define-values (flat-define stmts-define vars-define) (flatten-exp body))

     (let ([vars-args (map (lambda (arg) (cons (second arg) (third arg))) args)])

     `(define (,(second fun) ,@(map second args)) ,(append vars-args vars-define) ,@stmts-define (return ,flat-define)))]))

;;;;;;;;;;;;;;;;;;;;;;;
; Flatten Expressions ;
;;;;;;;;;;;;;;;;;;;;;;;
(define (flatten-exp exp)

  ; Initialize the values we will return.
  (define-values (flat-exp stmts-exp vars-exp) (values '() '() '()))
  
  (match exp

    ;;;;;;;;;;;;;;;;;;;;;;;;;
    ; Handle Project/Inject ;
    ;;;;;;;;;;;;;;;;;;;;;;;;;
    [`(,type-annot ,e ,type) #:when (or (equal? type-annot 'inject) (equal? type-annot 'project))

       (define-values (flat-e stmts-e vars-e) (flatten-exp e))

       ; Generate a Temporary Variable
       (define tmp-var (gensym 'jecttmp))

       ; Add a statement projecting/injecting the previously returned var
       (set! stmts-exp (append stmts-e `((assign ,tmp-var (,type-annot ,flat-e ,type)))))

       ; Update flat variable
       (set! flat-exp tmp-var)

       ; Update vars
       (if (equal? type-annot 'inject)
           ; inject creates an Any type var
           (set! vars-exp (cons (cons tmp-var `Any) vars-e))
           ; project creates a var of the type projected to
           (set! vars-exp (cons (cons tmp-var type) vars-e)))

       (values flat-exp stmts-exp vars-exp)]
    
    ; Decompose has-type
    [`(has-type ,e ,type)
                             
      (match e

        ;;;;;;;;;;;;;;;;;
        ; Trivial Cases ;
        ;;;;;;;;;;;;;;;;;
        [n #:when (fixnum? n) (set! flat-exp n)]
        [b #:when (boolean? b) (set! flat-exp b)]
        [v #:when (symbol? v) (set! flat-exp v)]
        [`(void) (set! flat-exp `(void))]
        
        [`(global-value ,name)
         (define v (gensym 'globtmp))
         
         (set! flat-exp v)
         (set! stmts-exp `((assign ,v (global-value ,name))))
         (set! vars-exp (list (cons v type)))]

        [`(function-ref ,name)

         (define v (gensym 'funtmp))
         
         (set! flat-exp v)
         (set! stmts-exp `((assign ,v (function-ref ,name))))
         (set! vars-exp (list (cons v type)))]

        ;;;;;;;;
        ; Read ;
        ;;;;;;;;
        [`(read)
         
         ; Generate a Temporary Variable
         (define tmp-var (gensym 'readtmp))
         
         (set! flat-exp tmp-var)

         ; Create statement
         (set! stmts-exp `((assign ,tmp-var (read))))

         ; Compile Vars
         (set! vars-exp (list (cons tmp-var type)))]

        ;;;;;;
        ; If ;
        ;;;;;;
        [`(if ,cnd ,thn ,els)

         ; Recur On Sub-Expressions
         (define-values (flat-cnd stmts-cnd vars-cnd) (flatten-exp cnd))
         (define-values (flat-thn stmts-thn vars-thn) (flatten-exp thn))
         (define-values (flat-els stmts-els vars-els) (flatten-exp els))

         ; Generate A Temporary Variable
         (define tmp-var (gensym 'ifrettmp))
         
         (set! flat-exp tmp-var)
                 
         ; Create If Statements
         (set! stmts-exp `(,@stmts-cnd (if (eq? ,flat-cnd #f) (,@stmts-els (assign ,tmp-var ,flat-els)) (,@stmts-thn (assign ,tmp-var ,flat-thn)))))
                 
         ; Compile If Vars
         (set! vars-exp (cons (cons tmp-var type) (append vars-cnd vars-thn vars-els)))
         ]

        ;;;;;;;
        ; Let ;
        ;;;;;;;
        [`(let ((,var ,e)) ,body)

         ; Recur on Sub-Expressions
         (define-values (flat-e stmts-e vars-e) (flatten-exp e))
         (define-values (flat-body stmts-body vars-body) (flatten-exp body))

         (set! flat-exp flat-body)

         ; Create Let Statements
         (cond
         
           ; Unoptimized lets (simple e's lend to no need for optimization.)
           [(empty? stmts-e) (set! stmts-exp `(,@stmts-e (assign ,var ,flat-e) ,@stmts-body))]

           ; Ifs
           [(equal? `if (first (second e)))
            (set! stmts-exp `(,@stmts-e (assign ,var ,flat-e) ,@stmts-body))]

           ; Vectors
           [(or (equal? 'Any (last e)) (and (list? (last e)) (equal? 'Vector (first (last e)))))
            (set! stmts-exp `(,@stmts-e (assign ,var ,flat-e) ,@stmts-body))]

           [else
            (set! stmts-exp `(,@(reverse (cdr (reverse stmts-e))) (assign ,var ,(third (last stmts-e))) ,@stmts-body))]
           )
         
         
         ; Compile Let Vars
         (set! vars-exp (cons (cons var (third e)) (append vars-e vars-body)))
         ]

        ;;;;;;;;;;;;;;;;;;;;
        ; Allocate/Collect ;
        ;;;;;;;;;;;;;;;;;;;;
        [`(allocate ,bytes ,t)
         (set! flat-exp `(allocate ,(second bytes) ,t))]
        [`(collect ,bytes)
         (set! flat-exp `(void))
         (set! stmts-exp `((collect ,(second bytes))))]

        ;;;;;;;;;;;;;;
        ; Operations ;
        ;;;;;;;;;;;;;;
        [`(,op ,args ...)

         (define-values (flat-args stmts-args vars-args) (map3 flatten-exp args))

         (match op

           ; Convert begins
           [`begin
            
            (set! flat-exp (last flat-args))
            (set! stmts-exp `(,@(foldr append '() stmts-args)))
            (set! vars-exp (foldr append '() vars-args))]

           ; Convert AND
           [`and

            (define-values (flat-and stmts-and vars-and) (flatten-exp `(has-type (if ,(first args) ,(second args) (has-type #f Boolean)) Boolean)))

            (set! flat-exp flat-and)
            (set! stmts-exp stmts-and)
            (set! vars-exp vars-and)]
           
           [else
            ; Generate a temporary variable
            (define tmp-var (gensym 'oprettmp))

            (set! flat-exp tmp-var)

            ; Create Operation statements
            (set! stmts-exp `(,@(foldr append '() stmts-args) (assign ,tmp-var (,op ,@flat-args))))

            ; Compile operation vars
            (set! vars-exp (cons (cons tmp-var type) (foldr append '() vars-args)))]
        
        )])

      ; Return the values garnered from inside the expression.
      (values flat-exp stmts-exp vars-exp)]))