(define (+ a b)
	(if (= a 0)
		b
		(inc (+ （dec a) b)))

(define (+ a b)
	(if (= a 0)
		b
		(+ (dec a) (inc b))))

(define (inc one)
	(+ one 1))

(define (dec one)
  (- one 1))

