#lang racket

(define pi 3.1416)
(define (square x)
  (* x x))
(define (cube x)
  (* x x x))
  
(define (my_calc1 x r)
  (cond
    ((= x 1) (* pi (square r)))
    ((= x 2) (*(/ 4 3) pi (cube r)))
    (else #f)
    )
  )

(define (my_calc2 x r)
  (if (= x 1) (* pi (square r))
   (if (= x 2) (*(/ 4 3) pi (cube r)) #f))
  )


(my_calc1 1 2)
(my_calc1 2 2)
(my_calc1 3 2)
(my_calc2 1 2)
(my_calc2 2 2)
(my_calc2 3 2)

     