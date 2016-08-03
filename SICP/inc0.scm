(define (+ a b)
  (if (= a 0)
      b
      (inc (+ dec a) b)))
(define (dec x)
  (- x 1))

(define (inc x)
  (+ x 1))
