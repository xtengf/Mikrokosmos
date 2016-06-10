;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3.1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; 程序的合约 area-of-ring : number number -> number
;; 阐明程序的用途
;; 例子
;; 定义：



;; 测试
;; 预期的值

(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

(define PI 3.14159)

(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))

(define (cost ticket-price)
  (* 1.5
     (* .04 (attendees ticket-price))))

(define (attendees ticket-price)
  (+ 120
     (* (/ 15 .10) (- 5.00 ticket-price))))
