(let ((x 0))
	(begin
		(while
			(begin
				(set! x (+ 1 x))
				(< x 42))
			(void))
		x))
