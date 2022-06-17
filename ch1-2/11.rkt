#lang sicp
(define (f1 n)
  (if (< n 3) 
    n
    (+ (f1 (- n 1))
       (* 2
          (f1 (- n 2)))
       (* 3
          (f1 (- n 3)))
       )
  ))

(define (f2 n)
  (define (f2-iter a b c count)
    (cond ((< count 2) count)
    ((= count 2) c)
    (else
      (f2-iter b c (+ (* 3 a) 
                      (* 2 b)
                      c) (- count 1)
      ))
    ))
  
  (f2-iter 0 1 2 n)
)

(f1 -1)
(f2 -1)
(f1 0)
(f2 0)
(f1 1)
(f2 1)
(f1 2)
(f2 2)
(f1 3)
(f2 3)
(f1 4)
(f2 4)

;;; (f1 110)
(f2 110)
