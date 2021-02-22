(defun combine(a b)
  (+ a b))

(defun fib(n)
  (cond ((zerop n) 0)
        ((equal n 1) 1)
        (t (combine (fib (- n 1))
           (fib (- n 2))))))

(print (fib 24))

