#lang racket


(define (cube-root x)
  (define (cube x)
    (* x x x))
  (define (good-enough? guess)
    (< (abs (- (cube guess) x)) 0.001))
  (define (improve guess)
    (/
      (+ (/ x (square guess)) (* 2 guess))
      3))
  (define (cube-iter guess)
    (if (good-enough? guess)
      guess
      (cube-iter (improve guess))))
  (cube-iter 1.0))


(define (cube x)
  (* x x x))

(define (square x)
  (* x x))

(cube 3)

(cube-root 27)

(cube-root 81)
