#lang racket

(provide convert-r7)

(require "../utilities.rkt")
(require "../utilities/constants.rkt")
(require "../utilities/helpers.rkt")

;;;;;;;;;;;;;;;;;;;;
; Convert R7 to R6 ;
;;;;;;;;;;;;;;;;;;;;
(define (convert-r7 program)
  (match program
    [`(program ,exps ...)
     (define body (last exps))
     (define defines (reverse (cdr (reverse exps))))

     `(program ,@(convert-defines defines) ,(convert-exp body))
     ]))

;;;;;;;;;;;;;;;;;;;
; Convert Defines ;
;;;;;;;;;;;;;;;;;;;
(define (convert-defines defines)
  (map (lambda (define) (match define
                          [`(define (,name ,args ...) ,body)
                           `(define (,name ,@(convert-args args)) : Any ,(convert-exp body))]))
       defines))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Convert Function Arguments ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(define (convert-args args)
  (map (lambda (arg) `[arg : Any]) args))


;;;;;;;;;;;;;;;;;;;;;;
; Convert Expression ;
;;;;;;;;;;;;;;;;;;;;;;
(define (convert-exp exp)
  (match exp

    ;;;;;;;;;;;;;;;;;;;;;;;
    ; Trivial Expressions ;
    ;;;;;;;;;;;;;;;;;;;;;;;
    [n #:when (fixnum? n) `(inject ,n Integer)]
    [b #:when (fixnum? b) `(inject ,b Boolean)]
    [v #:when (symbol? v) v]
    [`(void) `(inject ,exp Void)]
    [`(read) `(inject ,exp Integer)]

    ;;;;;;;
    ; Let ;
    ;;;;;;;
    [`(let ((,v ,e)) ,body)
     `(let ((,v ,(convert-exp e))) ,(convert-exp body))]

    ;;;;;;;;;;
    ; Lambda ;
    ;;;;;;;;;;
    [`(lambda (,args ...) ,body)
     `(inject (lambda: (,@(convert-args args)) : Any ,(convert-exp body)) (,@(map (lambda (arg) `Any) args) -> Any))]

    ;;;;;;
    ; If ;
    ;;;;;;
    [`(if ,cnd ,thn ,els)
     `(if (eq? ,(convert-exp cnd) (inject #f Boolean)) ,(convert-exp els) ,(convert-exp thn))]

    ;;;;;;;;;;;;;;
    ; Operations ;
    ;;;;;;;;;;;;;;
    [`([,op] ,args ...)
     (match op

       ;;;;;;;
       ; AND ;
       ;;;;;;;
       [`and
        (define tmp-var (gensym 'andtmp))

        `(let ((,tmp-var ,(convert-exp (first args))))
                (if (eq? ,tmp-var (inject #f Boolean))
                    ,tmp-var
                    ,(convert-exp (second args))))]

       ;;;;;;
       ; OR ;
       ;;;;;;
       [`or
        (define tmp-var (gensym 'ortmp))

        `(let ((,tmp-var ,(convert-exp (first args))))
                (if (eq? ,tmp-var (inject #f Boolean))
                    ,(convert-exp (second args))
                    ,tmp-var))]

       ;;;;;;;
       ; NOT ;
       ;;;;;;;
       [`not
        (define tmp-var (gensym 'nottmp))

        `(let ((,tmp-var ,(convert-exp (first args))))
           (if (eq? ,tmp-var (inject #f Boolean))
               ; TODO : DO WE REALLY INJECT HERE?
               (inject #t Boolean)
               (inject #f Boolean)))]

       
       ;;;;;;;;;;;;;;
       ; vector-ref ;
       ;;;;;;;;;;;;;;
       [`vector-ref
        (define tmp-var (gensym 'vecreftmp))

        ; TODO : IMPLEMENT EXP AS INDEX
        `(let ((,tmp-var (project ,(convert-exp (first args)) (Vectorof Any))))
           (vector-ref ,tmp-var ,(second args)))]

       ;;;;;;;;;;;;;;;
       ; vector-set! ;
       ;;;;;;;;;;;;;;;
       [`vector-set!
        (define tmp-var (gensym 'vecsettmp))

        ; TODO : IMPLEMENT EXP AS INDEX
        `(let ((,tmp-var (project ,(convert-exp (first args)) (Vectorof Any))))
           (vector-set! ,tmp-var ,(second args) ,(convert-exp (third args))))]

       ;;;;;;;;;;;;;;;;;;
       ; Arithmetic Ops ;
       ;;;;;;;;;;;;;;;;;;

       [`+ `(inject (+ (project ,(convert-exp (first args)) Integer) (project ,(convert-exp (second args)) Integer)) Integer)]

       [`- `(inject (- (project ,(convert-exp (first args)) Integer)) Integer)]

       ;;;;;;;
       ; eq? ;
       ;;;;;;;
       [`eq? `(inject (eq? ,(convert-exp (first args)) ,(convert-exp (second args))) Boolean)]

       ;;;;;;;;;;;;;;;;;;
       ; Comparison Ops ;
       ;;;;;;;;;;;;;;;;;;
       [(? cmp?) `(inject (,op (project ,(convert-exp (first args)) Integer) (project ,(convert-exp (second args)) Integer)) Boolean)]

       ;;;;;;;;;;;;;;;
       ; Application ;
       ;;;;;;;;;;;;;;;
       [else `((project ,(convert-exp op) (,@(map (lambda (arg) `Any) args) -> Any)) ,@(map convert-exp args))]

       )]

    ))