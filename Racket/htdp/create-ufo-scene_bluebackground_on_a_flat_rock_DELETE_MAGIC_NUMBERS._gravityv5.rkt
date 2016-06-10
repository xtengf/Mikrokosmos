;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname create-ufo-scene_bluebackground_on_a_flat_rock_DELETE_MAGIC_NUMBERS._gravityv5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; constants
;; properties of the "world"
(define WIDTH 100)
(define HEIGHT 400)

(define MIDDLE-WIDTH
  (/ WIDTH 2))
;; properties of the descending UFO
(define A 1)

(define MTSCN
  (place-image/align (circle 10 "solid" "tomato")
                 (/ WIDTH 2) (+ HEIGHT 10) "middle" "bottom"    
                 (rectangle WIDTH HEIGHT "solid" "blue")))

(define UFO
  (overlay (circle 10 "solid" "green")
           (rectangle 40 4 "solid" "greeen")))
(define UFO_CENTER-TO-BOTTOM
  (- HEIGHT (image-height UFO)))

(define X 50)

; functions
(define (create-rocket-scene.v6 t)
  (cond
    [(<= (distance t) UFO_CENTER-TO-BOTTOM)
     (place-image UFO MIDDLE-WIDTH t MTSCN)]
    [(> (distance t) UFO_CENTER-TO-BOTTOM)
     (place-image UFO MIDDLE-WIDTH UFO_CENTER-TO-BOTTOM
                  MTSCN)]))
(define (distance t)
  (* 1/2 A (sqr t)))


(animate create-rocket-scene.v6)