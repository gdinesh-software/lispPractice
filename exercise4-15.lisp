(defun geq(x y)
  (or (> x y) (= x y)))

(format t "~d" (geq 1 2))
