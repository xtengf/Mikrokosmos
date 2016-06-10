;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname create-ufo-scene_bluebackground_on_a_flat_rock.v5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; constants
(define WIDTH 100)
(define HEIGHT 400)

(define MTSCN
  (place-image/align (circle 10 "solid" "tomato")
                 (/ WIDTH 2) (+ HEIGHT 10) "middle" "bottom"    
                 (rectangle WIDTH HEIGHT "solid" "blue")))

(define UFO
  (overlay (circle 10 "solid" "green")
           (rectangle 40 4 "solid" "greeen")))
(define ROCKER_CENTER-TO-BOTTOM
  (- HEIGHT (image-height UFO)))

; functions
(define (create-rocket-scene.v5 h)
  (cond
    [(<= h ROCKER_CENTER-TO-BOTTOM)
     (place-image UFO 50 h MTSCN)]
    [(> h ROCKER_CENTER-TO-BOTTOM)
     (place-image UFO 50 ROCKER_CENTER-TO-BOTTOM
                  MTSCN)]))

(animate create-rocket-scene.v5)