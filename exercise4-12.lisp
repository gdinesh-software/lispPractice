(defun cycle(x)
  (cond ((< x 99) (+ x 1))
        ((eq 99 x) 1)))

(format t "~d~%" (cycle 1))
(format t "~d~%" (cycle 99))
