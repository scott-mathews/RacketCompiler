(let ((x (vector 0)))
	(begin (while (not (eq? (vector-ref x 0) 42))
				 		(vector-set! x 0 (+ (vector-ref x 0) 1)))
				 (vector-ref x 0)))
