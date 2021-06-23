(remainder 5 2)
(define (square x) (* x x))


(define (prime x)
  (define (prime-iter x n)
    (cond ((> (square n) x) x)
	  ((= (remainder x n) 0) n)
	  (else (prime-iter x (+ n 1)))))
  (prime-iter x 2))

(prime 29)

(define (prime? x)
  (= (prime x) x))

(prime? 273897893243343232)

(remainder 15 4)

(prime 29)

(define square_plus (lambda (x y) (+ (square x) (square y))))

(square_plus 89 88)
