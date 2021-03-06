(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (average x y)
	(/ (+ x y) 2))

(define (improve guess x)
	(average guess (/ x guess)))

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
					x)))

(define (sqrt x)
	(sqrt-iter 1.0 x))

(sqrt 9)
(sqrt 10)

(good-enough? 1 (/ 900000000000000000000000000000000000000000000000000000000000000000000000000000000001 2))

(sqrt 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)
