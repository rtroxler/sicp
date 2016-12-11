; For small numbers, the good-enough? function will likely end earlier than it should since the tolerance is
; very high in relation to the number we're calculting the square root of.
;
; For large numbers,


#lang racket

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

(define (sqrt-iter new-guess last-guess x)
  (if (better-enough? new-guess last-guess x)
    new-guess
    (sqrt-iter (improve new-guess x) new-guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (better-enough? new-guess last-guess x)
  (begin
    (printf "last-guess was: ~a\n" last-guess)
    (printf "new-guess is: ~a\n" new-guess)
    (< (abs (- new-guess last-guess)) 0.001)))

(define (square x)
  (* x x))


(newline)
(printf "square root of ~a\n" 900000000000000)
(sqrt 900000000000000)

(newline)
(printf "square root of ~a\n" 2342342341.23323234234)
(sqrt 2342342341.23323234234)

(newline)
(printf "square root of ~a\n" 0.003)
(sqrt 0.003)
