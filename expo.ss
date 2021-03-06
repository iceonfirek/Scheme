
(define (expo x n)
  (expo-iter x 1 n))
(define (expo-iter x count n)
  (if (= count n) x
      (* x (expo-iter x (+ count 1) n))))

(expo 5 4)

(define (* a b)
  (p-iter a 1 b))
(define (p-iter a count b)
  (if (= count b) a
      (+ a (p-iter a (+ count 1) b))))

(* 4 4)
(remainder 21 5)
(define (even? x)
  (= (remainder x 2) 0))

(even? 4)
