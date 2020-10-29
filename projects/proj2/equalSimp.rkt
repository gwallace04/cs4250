#lang racket
(define (equalsimp list1 list2)
  (cond
       ((null? list1) (null? list2))
       ((null? list2) #f)
       ((eqv? (car list1) (car list2))
                      (equalsimp (cdr list1) (cdr list2)))
       (else #f)
 ))

(equalsimp '(d c e b) '(c d e b))


