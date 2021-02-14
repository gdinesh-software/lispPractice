(defun throw-dice()
  (let ((output (random 6)))
    (+ output 1)))

(format t "~d" (throw-dice))
