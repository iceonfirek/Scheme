;; 随机小于n的数a, a的n次方除以n的余数等于a，那么n就是素数
;; (define remain (lambda (x y z)
;; 		 (if (and (>= x y) (< (- x y) z)) (- x y)
;; 		     (remain x (+ y z) z))))

;; (define (remainder x y)
;;   (remain x y y))
(define (square x) (* x x))

(define even? (lambda (x) (= (remainder x 2) 0)))

(define Fermat_module (lambda (a n m)
			(cond ((= n 0) 1)
			      ((even? n)
			       (remainder (square (Fermat_module a (/ n 2) m)) m))
			      (else
			       (remainder (* a (Fermat_module a (- n 1) m)) m)))))

(define Fermat_test (lambda (n)
		      (define (try_it a)
			(= (Fermat_module a n n) a))
		      (try_it (+ 1 (random (- n 1))))))

(define Fermat (lambda (x n)
		 (cond ((= n 0) #t)
		       ((Fermat_test x) (Fermat x (- n 1)))
		       (else #f))))

(Fermat 3243253257 1234)


