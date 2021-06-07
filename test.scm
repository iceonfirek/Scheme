(define fact
    (lambda (n)
      (if (= n 0)
          1
          (* n (fact (- n 1))))))



(define fact2
    (lambda (n)
      (if (= n 0)
          1
          (* n (fact2 (- n 2))))))


(define fact3 
    (lambda (n)
      (if (= n 0)
          1
          (* n (fact3 (- n 3))))))
