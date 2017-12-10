(let ((x (vector 42)))
 (begin (while #f
						(vector-set! x 0 0))
				(vector-ref x 0)))


