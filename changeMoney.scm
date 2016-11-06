(define (count-change amount)
  (cc amount 5))

(define (cc amount kindfs-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kindfs-of-coins 0)) 0)
		(else (+ (cc amount 
					(- kindfs-of-coins 1))
				(cc (- amount 
						(first-denomimation kindfs-of-coins))
					kindfs-of-coins)))))

(define (first-denomimation kindfs-of-coins)
  (cond ((= kindfs-of-coins 1) 1)
        ((= kindfs-of-coins 2) 5)
    	((= kindfs-of-coins 3) 10)
		((= kindfs-of-coins 4) 25)
		((= kindfs-of-coins 5) 50)))

(count-change 100)
