#lang racket
(define (square x)
  (* x x))
(define (distance x1 y1 x2 y2)
  (sqrt (+ (square (- x2 x1)) (square (- y2 y1))))
  )
(distance 5 3 7 2)


   