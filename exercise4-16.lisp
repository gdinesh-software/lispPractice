(defun foo(x)
  (cond ((and (oddp x) (> x 0)) (expt x 2))
        ((and (oddp x) (< x 0)) (* x 2))
        (t (/ x 2.0))))


(format t "~d" (foo 2))
