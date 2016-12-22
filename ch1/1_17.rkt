#lang racket

(define (easy-mult a b)
  (if (= b 0)
    0
    (+ a (* a (- b 1)))))

(define (iter-mult a b)
  (define (iterate a counter product)
    (if (= counter 0)
      product
      (iterate a
               (- counter 1)
               (+ a product))))
  (iterate a b 0))

(define (fast-mult a b)
  (cond ((= b 0)
         0)
        ((even? b)
         (double (fast-mult a (halve b))))
        (else
         (+ a (fast-mult a (- b 1))))))
(define (double x) (+ x x))
(define (halve x) (/ x 2))

(easy-mult 5 5)
(iter-mult 5 5)
(fast-mult 5 5)

(easy-mult 6 7)
(iter-mult 6 7)
(fast-mult 6 7)
