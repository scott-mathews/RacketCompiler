(let ((x (vector 1)))
	(begin
		(if (eq? (vector-ref x 0) 1)
			(vector-set! x 0 42)
			(vector-set! x 0 777)
			)
		(vector-ref x 0)
		)
	)
