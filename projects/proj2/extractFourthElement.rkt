#lang racket
(car (cdr '((a b) c d)))

(define (extract_fourth_elm a_list)
  (car (cdr(cdr (cdr a_list))))
)

(extract_fourth_elm '(a b c (d m) e f))


(define (extract4th_elm a_list)
  (cadddr a_list)
)

(extract4th_elm '(a b c (d  l m) e f))