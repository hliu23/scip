#lang sicp

;;; old method
(define (sqrt-iter guess x)
  (if (good-enough? guess x) 
    guess
    (sqrt-iter (improve guess x) x)))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))
(define (square x)
  (* x x))
(define (improve guess x) 
  (average guess (/ x guess)))
(define (average x y)
  (/ (+ x y) 2))
(define (sqrt x)
  (sqrt-iter 1.0 x))


;;; EXAMPLES

;;; very small number
(square (sqrt 0.000000001))
;;; 0.0009765631660156936

;;; very large number
(square (sqrt 129945434298001239954))
;;; not finish

  ;;; (previous example: 
  ;;; (square (sqrt (+ 1e+20 500)))
  ;;; 1e+20
  ;;; )

;;; NEW METHOD

(define (sqrt-iter-new guess prev-guess x)
  (if (good-enough-new? guess prev-guess x) 
    guess
    (sqrt-iter-new (improve guess x) guess x)))

(define (good-enough-new? guess prev-guess x)
  (< (abs (- guess prev-guess)) (* 0.000001 guess)))

(define (sqrt-new x)
  (sqrt-iter-new 1.0 0.0 x))

(square (sqrt-new 0.000000001))
(square (sqrt-new 129945434298001239954))
(sqrt-new 2)
