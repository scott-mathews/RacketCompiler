(define (fun32 x) (begin
										(set! x (vector 42))
										(vector-ref x 0)))

(fun32 (vector 777))
