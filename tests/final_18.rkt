(define (set42 x) (begin (set! x 42) x))

(let ((x 777))
	(begin 
		(set! x (set42 x))
		x))
