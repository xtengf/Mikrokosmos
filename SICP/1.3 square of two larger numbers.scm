(define (square-of-two-large-numbers x y z)
  (cond ((and (< z x) (< z y)) (square x y))
        ((and (< x y) (< x z)) (square y z))
        ((and (< y z) (< y z)) (square x z))))

(define (square x y)
  (+ (* x x) (* y y)))
        
   
