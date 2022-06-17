#lang sicp
;;; 1 indexed
(define (pt level index)
  (if (or (= index 1)
          (= index level)
          (= level 1))
      1
      (+ (pt (- level 1) (- index 1))
      (pt (- level 1) index)))
)


(pt 7 1)
(pt 7 2)
(pt 7 3)
(pt 7 4)
(pt 7 5)
(pt 7 6)
(pt 7 7)
