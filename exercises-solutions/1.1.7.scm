;; 1.6
;; answer needed

;; 1.7
; For (sqrt 0.000000144) with previous good-enough?:
; actual:   7.81864267e-3
; expected: 3.79473e-4

; For (sqrt 0.000000144) with new good-enough?:
; actual:   3.80110e-4
; expected: 3.79473e-4

; For (sqrt 123456789123) with previous good-enough?:
; actual:   351364.18303947826
; expected: 351364.183

; For (sqrt 123456789123) with new good-enough?:
; actual:   351364.18303947826
; expected: 351364.183

; The new method works better for small numbers, but does not seem to affect the result for large numbers.

;; new implementation of sqrt
(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

(define (sqrt-iter guess old-guess x)
  (if (good-enough guess old-guess)
      guess
      (sqrt-iter (improved-guess guess x) guess x)))

(define (improved-guess guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough guess old-guess)
(> 0.0001 (abs (- guess old-guess))))

;; 1.8
(define (cube-root x)
  (cube-root-iter 1.0 0.0 x))

(define (cube-root-iter guess old-guess x)
  (if (good-enough guess old-guess)
      guess
      (cube-root-iter (cube-improve-guess guess x) guess x)))

(define (cube-improve-guess guess x)
  (/ 
   (+ 
    (/ x (square guess)) 
    (* 2 guess)) 
   3))