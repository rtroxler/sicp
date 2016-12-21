#lang racket

(define (expt b n)
  (a-fast-expt b n 1))

(define (a-fast-expt b n a)
  (cond ((= n 0) a)
        ((even? n)
         (a-fast-expt (square b) (/ n 2) a))
        (else
          (a-fast-expt b (- n 1) (* a b)))))

(define (square x) (* x x))

(expt 11 45)
; shit's so fast
