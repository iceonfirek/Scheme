(define (inc n) (+ n 1))







(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
	 (sum term (next a) next b))))


(define (sum-cubes a b)
  (sum cube a inc b))


(define (sum cube a inc b)
  (if (> a b)
      0
      (+ (cube a)
	 (sum cube (inc a) inc b))))
