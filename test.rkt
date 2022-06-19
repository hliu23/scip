#lang sicp

(define a 3)
(define (b x) (+ a x))
(b 4)
(inc a)
(b 4)

(cond ((= 1 1) 
  (+ 2 3)
  (+ 3 3)
)
(else 2))

(if (= 1 1)
  ((+ 2 3)
  (+ 3 3))
  (+ 4 3)
)
