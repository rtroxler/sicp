#lang racket

; recursive
(define (recursive-f n)
  (if (< n 3)
    n
    (+
      (recursive-f (- n 1))
      (* 2 (recursive-f (- n 2)))
      (* 3 (recursive-f (- n 3))))))

(recursive-f 2)
; 2
(recursive-f 3)
; 4
(recursive-f 4)
; 11
(recursive-f 5)
; 25
(recursive-f 6)
; 59


(define (iterative-f n)
  (f-iter 0 1 2 n))

(define (f-iter a b c n)
  (if (= n 0)
    a
    (f-iter b c (+ c (* 2 b) (* 3 a)) (- n 1))))

(iterative-f 2)
; 2
(iterative-f 3)
; 4
(iterative-f 4)
; 11
(iterative-f 5)
; 25
(iterative-f 6)
; 59
