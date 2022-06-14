#lang sicp

(define (cbrt x)

  (define (good-enough? prev-guess guess)
    (<= (abs (- prev-guess guess)) (abs (* 0.00001 guess))))
    ;;; equal sign and second abs is used to allow possible zero and negative guesses
  (define (improve guess)
    (/ (+ (/ x guess guess)
          (* 2 guess))
        3
    )
  )    
  (define (cbrt-iter prev-guess guess)
    (cond ((good-enough? prev-guess guess) guess)
          (else 
          ;;;   (display (improve guess))
          ;;;   (newline)
            (cbrt-iter guess (improve guess)))
    )
  )

  (cbrt-iter 0.0 1.0))



(cbrt 300000000000000000000000000000)
(cbrt -0.04789886503465780465768034567)
(cbrt 0)


;;; improved with block structure and lexical scoping
