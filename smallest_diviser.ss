(define smallest_diviser (lambda (x)
			   (define even? (lambda (x n)
					   (= (remainder x n) 0)))
			   (define square (lambda (x)
					    (* x x)))
			   (define smallest_diviser_iter (lambda (x n)
							    (cond ((> (square n) x) x)
								  ((even? x n) n)
								  (else (smallest_diviser_iter x (+ n 1))))))
			   (smallest_diviser_iter x 2)))
;;execise 1.21 output: 199 1999 7
(smallest_diviser 19999)

(define prime? (lambda (x)
		 (= (smallest_diviser x) x)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (time-nanosecond (current-time))))

(define (start-prime-test n start-time) 
  (if (prime? n)
      (report-prime (- (time-nanosecond (current-time)) start-time) (make-time 'time-duration (time-nanosecond (current-time)) start-time))))

(define (report-prime elapsed-time time-duration)
  (newline)
  (display " *** ")
  (newline)
  (display elapsed-time)
  (newline)
  (display time-duration))


(timed-prime-test 199999)


