(define (add1 x) (+ x 1))

(let ((x 0))
	(begin
		(while (< x 42)
			(set! x (add1 x)))
		(+ x 42)))
