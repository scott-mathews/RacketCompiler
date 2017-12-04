#lang racket

(require "../utilities.rkt")

(require "../utilities/helpers.rkt")

(provide expose-allocation)

(define (expose-allocation exp)
  (match exp

    ; Inject/Project
    [`(inject ,e ,t) `(inject ,(expose-allocation e) ,t)]
    [`(project ,e ,t) `(project ,(expose-allocation e) ,t)]
    
    ; vector expressions are reformatted into
    ; a series of let bindings surrounding a
    ; conditional call to the garbage collector
    ; which evaluate to the value storing the
    ; start address of the vector in memory
    [`(vector ,exps* ...)
     (make-lets exp)]

    ; Lets are handled trivially
    [`(let ((,v ,e)) ,body)
     `(let ((,v ,(expose-allocation e))) ,(expose-allocation body))]
    
    ; Terminal values are handled trivially
    [(? terminal?) exp]
    [v #:when (or (terminal? v) (equal? `function-ref (car v))) v]
    
    ; The operation form is handled trivially
    [`(,op ,exps* ...)
     `(,op ,@(map expose-allocation exps*))]

    ; The define form is handled trivially
    [`(define (,name ,args* ...) ,body)
     `(define (,name ,@args*) ,(expose-allocation body))]

    ; The program form is handled trivially
    [`(program ,type ,exps ...)
     (define body (last exps))
     (define defs (reverse (cdr (reverse exps))))
     `(program ,type ,@(map expose-allocation defs) ,(expose-allocation body))]))

; Helpers ;

; zips two lists into one association list
; e.g. '(1 2 3) '(4 5 6) -> '((1 . 4) (2 . 5) (3 . 6))
(define zip (lambda (l1 l2) (map cons l1 l2)))

(define (make-lets exp)
  (match exp
    [`(vector ,exps* ...)
     ; apply expose allocation on all exps* to ensure any contained vectors are dealt with
     (set! exps* (map expose-allocation exps*))
     
     ; bytes needed for this vector = 8 + 8 * length of vector
     (define bytes (+ 8 (* 8 (length exps*))))

     ; length of vector
     (define vec-length (length exps*))

     ; initialization variables which will contain values to be stored in vector
     (define init-vars (map (lambda (exp) (gensym 'initvar)) exps*))

     ; variable which will contain the final vector pointer
     (define return-variable (gensym 'vector))

     ; initial lets contain the assignment of a variable to an expression
     ; and a placeholder in the body of the let
     (define init-lets
       (foldr cons '() (map
                        (lambda (pair)
                          `(let ((,(cdr pair) ,(car pair)))
                              placeholder))
                        (zip exps* init-vars))))

     (define center (make-center return-variable exps* bytes vec-length))

     (define assign-lets
       (reverse (foldr cons '() (map
                                 (lambda (pair)
                                   `(let ((,(gensym '_) (vector-set! ,return-variable ,(car pair) ,(cdr pair))))
                                       placeholder))
                                 (zip (range 0 vec-length) init-vars)))))
     
     (insert-expressions (append init-lets `(,center) assign-lets `(,return-variable)) `placeholder)
     ]))

; inserts each expression into the previous, at the location indicated by the marker
(define (insert-expressions expressions marker)
  ; initialize an empty expression
  (define final-expression marker)

  ; while the 
  (while (> (length expressions) 0)
         (set! final-expression (insert-into final-expression (car expressions) marker))
         (set! expressions (cdr expressions)))
  final-expression)

; structurally recurses a let ast until the body is equal to
; provided marker, then places the desired expression into
; the old expression
(define (insert-into enclosing enclosed marker)
  (match enclosing
    [sym #:when (equal? sym marker) enclosed]
    [`(let ((,v ,e)) ,body)
     `(let ((,v ,e)) ,(insert-into body enclosed marker))]
    [else (error `insert-into "Failed to match ~a" enclosing)]))

; creates the center of the expose-allocation expression
; which is a conditional collect call followed by an
; an allocation of space
(define (make-center return-variable vector-type bytes vec-length)
  `(let ([,(gensym '_) (if (< (global-value fromspace_end)
                                        (+ (global-value free_ptr) ,bytes))
                           (void)
                           (collect ,bytes))])
     (let ([,return-variable (allocate ,vec-length (Vector FakeType))])
       placeholder
       )))

;; examples ;;
; example make let output
;(let ([x0 e0])
;  (let ([x1 e1])
;    (let ([_ (if (< (+ (global-value free_ptr) bytes=(8 + 8n)=24))
;                 (void)
;                 (collect bytes=(8 + 8n)=24))])
;      (let ([v (allocate n=2 type)])
;        (let ([_ (vector-set! v 0 x0)])
;          ((let ([_ (vector-set! v 1 x1)])
;             v)))))))