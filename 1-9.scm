(define (cbrt x)
	(define (good-enough? guess new-guess)
		(< (/ (abs (- guess new-guess)) guess) 0.0001))

	(define (improve guess x)
	  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

	(define (cbrt-iter guess x)
		(if (good-enough? guess (improve guess x))
			(improve guess x)
			(cbrt-iter (improve guess x) x)))

	(cbrt-iter 1.0 x))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (improve guess x)
	(average guess (/ x guess)))


(cbrt 27)
