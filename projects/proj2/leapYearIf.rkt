#lang racket
(define (leap? year)
  (if (zero? (modulo year 400)) #t (if (zero? (modulo year 100)) #f
            (if (zero? (modulo year 4)) #t #f)
    )))
                                
  
(leap? 1900)


   