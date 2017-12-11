(let ((x 42))
	(begin
		(set! x 0)
		(while (< x 42)
			(set! x (+ x 1)))
		x))
