(let ((x 2))
	(begin
		((lambda (y) (set! x 42)) 3)
		x))
