(define (update-vec vec)
	(begin
		(vector-set! vec 0 42)
		vec))

(let ((x 22))
	(let ((y (update-vec (vector x))))
	 (vector-ref y 0)))
