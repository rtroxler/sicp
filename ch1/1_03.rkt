#lang racket

(define (big-ol-sums x y z)
  (+ (square (car (two-largest x y z)))
     (square (cadr (two-largest x y z)))))

(define (square x) (* x x))

(define (two-largest . nums)
    (list-tail (sort nums <) (- (length nums) 2)))

(if (= (big-ol-sums 1 2 3) 13)
  (println "success")
  (println "fail"))

(if (= (big-ol-sums 3 1 2) 13)
  (println "success")
  (println "fail"))

(if (= (big-ol-sums 3 2 1) 13)
  (println "success")
  (println "fail"))
