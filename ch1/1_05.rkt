#lang racket

(define (p) (p))

(define (text x y)
  (if (= x 0)
    0
    y))


; Applicative would evalute all of the operands first, resulting in an infinite loop (with (p) recursively
; calling itself).
; Normal would not evaluate operands until they are needed, so (p) would never need to call itself,
; and 0 would be returned.
