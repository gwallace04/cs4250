#lang racket
(define (f a)
  (+ a 10)
 )
(f 5)
(define (g b)
  (sin (/ b 2))
 )
(g 13)

  ((compose f g) 3)


