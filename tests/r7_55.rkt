(let ((vec12 (vector 12)))
	(let ((vec13 (vector 13)))
		(if (eq? (vector-ref vec12 0) (vector-ref vec13 0))
			777
			42)))
