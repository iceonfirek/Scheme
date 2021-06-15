;exercise 1.2
(/ (+ 5 (+ 4 (- 2 (- 3 (+ 6 (/ 4 5))))))
   (* 3 (- 6 2) (- 2 7)))

;exercise 1.3
(define (ssq a b) (+ (* a a) (* b b)))
(define (sum_big a b c)
        (cond ((and (> a c) (> b c)) (ssq a b))
              ((and (> a b) (> c b)) (ssq a c))
              (else (ssq b c))))

;exercise 1.4
        
