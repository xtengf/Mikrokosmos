;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Untitled) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (area-of-disk r)
  (* 3.14 (* r r)))

(area-of-disk 4)

(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

(area-of-ring 14 5)

(define (euro dollar)
  (* 1.023 dollar))
(euro 5)

(define (wage h)
  (* 12 h))
(wage 5)

(define (tax wage)
  (* .15 wage))
(tax 60)

(define (netpay wage tax)
  (- wage tax))
(netpay 60 9)

(define (sum-coins a b c d)
  (+ (* a 1)
     (* b 5)
     (* c 10)
     (* d 25)))
(sum-coins 3 4 5 6)

(define (total-profit number)
  (- (* 5 number)
     20
     (* 0.5 number)))
(total-profit 5)