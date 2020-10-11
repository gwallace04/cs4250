#lang racket
(define (equalLists list1 list2)
  (cond
       ((not (list? list1)) (eq? list1 list2))
       ((not (list? list2)) #f)
       ((null? list1) (null? list2))
       ((null? list2) #f)
       ((equalLists (car list1) (car list2))
                      (equalLists (cdr list1) (cdr list2)))
       (else #f)
 ))

(equalLists '(d (c e) b) '(d (c e) b))

