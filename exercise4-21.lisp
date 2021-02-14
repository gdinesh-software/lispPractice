(defun gtestWithIf(n m)
  (if (> n m)
    (zerop n)
    (zerop m)))

(format t "~d" (gtestWithIf -2 0))
