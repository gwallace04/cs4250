#lang racket
(define (leap? year)
  (cond
     ((zero? (modulo year 400)) #t)
     ((zero? (modulo year 100)) #f)
     (else (zero? (modulo year 4)))
  ))
                                
  
(leap? 1900)


   