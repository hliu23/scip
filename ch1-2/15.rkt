#lang sicp
;;; times p will be run for any number
(define (ans num)
  (define (ans-iter num count)
    (
      if (not (> (abs num) 0.1))
        count
        (ans-iter (/ num 3.0) (+ count 1))
      
    ))
  (ans-iter num 0)
)
(ans 12.15)
;;; a. 5 times
;;; b. space: Theta(n)
;;;    time: Theta(n)
;;; b/c linear recursive
