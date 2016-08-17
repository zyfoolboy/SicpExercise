(define (sum x y z)
	(if (and (<= x y) (<= x z))
	(+ y z)
	(sum y z x)))

(sum 8 20 6)
