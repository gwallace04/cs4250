#lang racket
(map (lambda (num) (* num num num)) '(3 4 5 6))


(define (arith x)
     (+ 3 (* 2 x x x))
  )

(arith -3)

(map arith '(2 4 6)) 
