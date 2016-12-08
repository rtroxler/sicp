#lang racket

(define (big-ol-sums x y z)
  (cond ((and (< x y) (< x z)) (+ y z))
        ((and (< y x) (< y z) (+ x z)))
        (else (+ x y))))


(if (= (big-ol-sums 1 2 3) 5)
  (println "success")
  (println "fail"))

(if (= (big-ol-sums 3 1 2) 5)
  (println "success")
  (println "fail"))

(if (= (big-ol-sums 3 2 1) 5)
  (println "success")
  (println "fail"))
