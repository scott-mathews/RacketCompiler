#lang racket

;;;;;;;;;;;;;;;;;;;;;;;;
; <=> Typecheck R6 <=> ;
;;;;;;;;;;;;;;;;;;;;;;;;

(define (type-check env)
  (lambda (e)
    (define recur (type-check env))
    (match e
      
      [`(vector-ref ,(app recur e t) ,i)
       (match t
         [`(Vector ,ts ...) ...] ; TODO
         [`(Vectorof ,t)
          (unless (exact-nonnegative-integer? i)
            (error `type-check "invalid index ~a" i))
          (values `(vector-ref ,e ,i) t)])]
      [`(vector-set! ,(app recur e-vec^ t-vec) ,i
                     ,(app recur e-arg^ t-arg))
       (match t-vec
         [`(Vector ,ts ...) ...] ; TODO
         [`(Vectorof ,t)
          (unless (exact-nonnegative-integer? i)
            (error `type-check "invalid index ~a" i))
          (unless (equal? t t-arg)
            (error `type-check "type mismatch in vector-set! ~a ~a" t t-arg))
          (values `(vector-set! ,e-vec^ ,i ,e-arg^) `Void)]
         [else (error `type-check
                      "expected a vector in vector-set!, not ~a" t-vec)])]
      )))