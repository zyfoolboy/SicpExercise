# SicpExercise
Sicp练习解答
###1.1
10  12  8  3  -2  6  19  0  b=4  16  6  16
***
###1.2
[1.2答案](https://github.com/zyfoolboy/SicpExercise/blob/master/1-2.scm)
***
###1.3
[1.3答案](https://github.com/zyfoolboy/SicpExercise/blob/master/1-3.scm)
***
###1.4
1.4过程的行为是  a + |b| 

a加上b的绝对值
***
###1.5
```
(define (p) (p))
(define (text x y)
	(if (= x 0)
	    0
	    y))

(text 0 (p))
```

首先对于 (define (p) (p)) 来说，无论是应用序或者正则序只要调用这个函数都会进入无限循环递归中

应用序会先对函数的各个参数求值，然后应用到函数中，对于 (text 0 (p)) 来说，应用序会先运算 (p) 直接把运算后的 (p) 应用到 (text x y) 的过程中，这样就会导致程序进入无限递归中去。

正则序则不一样，先不求参数的值，直到需要值的时候再求值，因为第一个参数是0，程序不会用到 (p) 所以直接返回0

Scheme 的解释器进入到无限递归中因此属于应用序
***
###1.6
[代码](https://github.com/zyfoolboy/SicpExercise/blob/master/1-6.scm)

由于 Scheme 的解释器属于应用序，所以会先对传入 new-if 的两个参数进行求值，如果第二个参数不是理想值，所以 new-if 会无限递归下去，从而不能出正确值
***
###1.7
在该方法中判断求值是否完成的充要条件是 “猜测的数的平方与被开方的数的差小于0.001” 转变为条件表达式

>|guess^2 - x| < 0.001

>-0.001 < guess^2 - x < 0.001

>guess^2 - 0.001 < x < guess^2 + 0.001

>0.0009 < x < 1.0001

对于 `x > 1.0001` 经过 `(improve guess x)` 之后会趋近于正确值 
***
###1.8
[代码](https://github.com/zyfoolboy/SicpExercise/blob/master/1-8.scm)
***
###1.9
第一个计算过程:
>(+ 4 5)<br/>
(inc (+ 3 5))<br/>
(inc (inc (+ 2 5)))<br/>
(inc (inc (inc (+ 1 5))))<br/>
(inc (inc (inc (inc (+ 0 5)))))<br/>
(inc (inc (inc (inc 5))))<br/>
(inc (inc (inc 6)))<br/>
(inc (inc 7))<br/>
(inc 8)<br/>
9

该过程属于递归

第二个计算过程:
>(+ 4 5)<br/>
(+ 3 6)<br/>
(+ 2 7)<br/>
(+ 1 8)<br/>
(+ 0 9)<br/>
9

该过程属于迭代
***
###1.10
>(A 1 10)<br/>
(A 0 (A 1 9))<br/>
(A 0 (A 0 (A 1 8)))<br/>
(A 0 (A 0 (A 0 (A 1 7))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 1 6)))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 (A 1 5))))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 4)))))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 3))))))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 2)))))))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4))))))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 16))))))<br/>
(A 0 (A 0 (A 0 (A 0 (A 0 32)))))<br/>
(A 0 (A 0 (A 0 (A 0 64))))<br/>
(A 0 (A 0 (A 0 128)))<br/>
(A 0 (A 0 256))<br/>
(A 0 512)<br/>
1024

(A 1 10) = 2^10 = 1024<br/>
(A 1 n) = 2^n

>(A 2 4)<br/>
(A 1 (A 2 3))<br/>
(A 1 (A 1 (A 2 2)))<br/>
(A 1 (A 1 (A 1 (A 2 1))))<br/>
(A 1 (A 1 (A 1 2)))<br/>
(A 1 (A 1 2^2))<br/>
(A 1 2^2^2)<br/>
2^2^2^2<br/>
65536<br/>

(A 2 4) = 2^2^2^2 = 2^16 = 65535
