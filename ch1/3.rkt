#lang sicp

(define (sqrt x) (* x x))
(define (sum a b) (+ (sqrt a) (sqrt b)))
(define (ans a b c) (cond 
  ((and (>= b a) (>= c a)) (sum b c))
  ((and (>= a b) (>= c b)) (sum a c))
  ((and (>= a c) (>= b c)) (sum a b))
  (else -100))
)
(ans 3 3 3)
(ans 3 3 4)
(ans 3 4 4)
(ans 3 4 5)
(ans -1 -2 0)
(ans -1 1 0)