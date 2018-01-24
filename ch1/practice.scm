;; Exercise 1.1
;; 10
10

;; 12
(+ 5 3 4)
;; 8
(- 9 1)
;; 3
(/ 6 2)
;; 6
(+ (* 2 4) (- 4 6))
;; void
(define a 3)
;; void
(define b (+ a 1))
;; 19
(+ a b (* a b))
;; #f
(= a b)
;; 4
(if (and (> b a) (< b (* a b)))
    b
    a)
;; 16
(cond
 ((= a 4) 6)
 ((= b 4) (+ 6 7 a))
 (else 25))
;; 6
(+ 2 (if (> b a)
	 b
	 a))
;; 8
(* (cond
    ((> a b) a)
    ((< a b) b)
    (else -1))
   (+ a 1))

;; Ex. 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

;; Ex. 1.3
(define (sq x)
  (* x x))

(define (ss-lg x y z)
  (if (or (> x y) (> x z))
      (+ (sq x) (if (> y z)
		    (sq y)
		    (sq z)))
      (+ (sq y) (sq z))))

(ss-lg 100 4 5)

;; Ex 1.4
;; Answer: Adds the absolute value of b to a.

;; Ex. 1.5
;; Applicative-order will cause an infinite loop. Normal order would resolve to 0.
