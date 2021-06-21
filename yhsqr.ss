(define (yhsqr l c)
  (if (or (= c 1) (= c l))
      1
      (+ (yhsqr (- l 1) (- c 1)) (yhsqr (- l 1) c))))
(yhsqr 5 5)
