(defun make-even(n)
  (if (oddp n)
    (+ n 1)
    n))

(format t "~d" (make-even 2))
