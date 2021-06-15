(define (root-iter guess x improve)
        (if (goodenough guess x improve)
            guess
            (root-iter (improve guess x) x improve)))

(define (goodenough guess x improve)
        (< (abs (- (improve guess x) guess)) (* guess error-threshold)))

(define error-threshold .0000001)

(define (square x) (* x x))

(define (cbrt-improve guess x)
        (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (sqrt-improve guess x)
        (/ (+ guess (/ x guess)) 2))

(define (sqrt x)
        (root-iter 1.0 x sqrt-improve))

(define (cbrt x)
        (root-iter 1.0 x cbrt-improve))
