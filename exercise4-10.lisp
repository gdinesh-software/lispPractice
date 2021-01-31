(defun constrain(x minimum maximum)
  (cond ((and (> x minimum) (< x maximum)) x)
        ((< x minimum) minimum)
        ((< maximum x) maximum)))


(format t "~d" (constrain 3 -50 50))
