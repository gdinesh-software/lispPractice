(defun fahrenheitConverter(n)
  (* (/ 5 9.0) (- n 32)))

(format t "~d" (fahrenheitConverter 100))
