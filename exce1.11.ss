(define (f x)
  (define (f-iter count x a b c)  
        (if (= count x)
           a
            (f-iter (+ 1 count) x b c (+ (* 3 a) (* 2 b) c))))  
  (if (< x 3) x
      (f-iter 0 x 0 1 2)))




(f 5)
