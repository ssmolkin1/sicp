(define (remainder a b)
  (if (< a b)
      a
      (remainder (- a b) b)))

(define (sign n d)
  (cond ((and (negative? n) (negative? d)) abs)
        ((or (negative? n) (negative? d) ) negate)
        (else abs)))

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (make-rat n d)
  (let* ((g (gcd n d))
         (sn ((sign n d) n))
         (sd (abs d)))
             (cons (/ sn g) (/ sd g))))

(define (add-rat x y)
        (make-rat (+ (* (numer x) (denom y))
                     (* (numer y) (denom x)))
                  (* (denom x) (denom y))))

(define (sub-rat x y)
        (make-rat (- (* (numer x) (denom y))
                     (* (numer y) (denom x)))
                  (* (denom x) (denom y))))

(define (mul-rat x y)
        (make-rat (* (numer x) (numer y))
                  (* (denom x) (denom y))))

(define (div-rat x y)
        (make-rat (* (numer x) (denom y))
                  (* (denom x) (numer y))))

(define (equal-rat? x y)
        (= (* (numer x) (denom y))
           (* (numer y) (denom x))))

(define (print-rat x)
        (newline)
        (display (numer x))
        (display "/")
        (display (denom x)))

(make-rat -6 -9)
(make-rat -5 9)
(make-rat 5 15)
(make-rat 14 21)
