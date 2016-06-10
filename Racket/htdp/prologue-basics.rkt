;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname prologue-basics) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(+ 1 2)
(string-append "hello" "u")
(string-length "hello u")
(string-length "hellou")

(number->string 4)
(string->number "2")

(or #t #f)
(and #true #false)

(< 2 3)

(string=? "h" "H")
(string=? "H" "H")

(and (or (= (string-length "hello world") (string->number "1"))
         (string=? "hello world" "good morning"))
     (>= (+ (string-length "hello world") 60) 80))