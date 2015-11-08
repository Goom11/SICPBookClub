;; Section 1.1.6 Exercise Solutions

; 1.2
(/ (+ 5 4 
      (- 2 
	 (- 3 
	    (+ 6 (/ 4 5)))))
   (* 3 
      (- 6 2) 
      (- 2 7)))

; 1.3
(define (square x)
  (* x x)
)

(define (sum-of-squares x y z)
  (cond 
   ((and (> (+ x y) (+ y z)) (> (+ x y) (+ x z))) (+ (square x) (square y)))
   ((and (> (+ x z) (+ x y)) (> (+ x z) (+ y z))) (+ (square x) (square z)))
   ((and (> (+ y z) (+ x y)) (> (+ y z) (+ x z))) (+ (square y) (square z)))
  )
)

; 1.4
If b > 0, then return a + b, else return a - b.
(The coolness in this function is the ability to conditional choose an operator.)

; 1.5
Since the function p is defined recursively, if the interpreter is using applicative-order evaluation, Ben's interpreter would enter an infinite recursion when trying to evaluate the function p. If the interpreter was using normal-order, the interpreter would return 0.


