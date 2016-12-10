; new-if causes an infinite loop because the applicative order interpretation evalutates
; the new-if function and recursively evals the else clause. Using if would evaluate the predicate
; expression before evaluationg either results.

#lang racket

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (square x)
  (* x x))

(sqrt 9)
; 3.00009155413138

(sqrt (+ 100 37))
; 11.704699917758145

(sqrt (+ (sqrt 2) (sqrt 3)))
; 1.7739279023207892

(square (sqrt 1000))
; 1000.000369924366
