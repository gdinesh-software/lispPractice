(defun ordered(x y)
  (if (< x y)
    (list x y)
    (list y x)))


(format t "~d" (ordered 5 4))
