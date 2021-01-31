(defun user-not(x)
  (if (null x)
    T
    nil))

(format t "~d" (user-not nil))
