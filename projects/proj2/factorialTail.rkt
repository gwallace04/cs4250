#lang racket
(define (facthelper n factpartial)
  (if (<= n 1)
    factpartial
    (facthelper (- n 1) (* n factpartial))
 ))
(define (factorial n)
  (facthelper n 1)
  )
(factorial 5)


   