(define (mul x y)
	(let ((result 0))
		(begin
			(while (> x 0)
				(set! result (+ y result))
				(set! x (+ (- 1) x)))
			result)))

(mul 21 2)
