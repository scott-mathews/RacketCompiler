(let ((x 0))
	(begin
		(while (< x 42)
			((lambda () (set! x (+ 1 x))))
			)
		x))

