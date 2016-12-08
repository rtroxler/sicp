#lang racket

(define (big-ol-sums x y z)
  (cond ((and (< x y) (< x z)) (+ (square y) (square z)))
        ((and (< y x) (< y z) (+ (square x) (square z))))
        (else (+ (square x) (square y)))))

(define (square x) (* x x))


(if (= (big-ol-sums 1 2 3) 13)
  (println "success")
  (println "fail"))

(if (= (big-ol-sums 3 1 2) 13)
  (println "success")
  (println "fail"))

(if (= (big-ol-sums 3 2 1) 13)
  (println "success")
  (println "fail"))
