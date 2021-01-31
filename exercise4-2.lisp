(defun further(x)
  (if (> x 0)
    (+ x 1)
    (- x 1)))

(format t "~d" (further 1))
(format t "~d" (further -1))
(format t "~d" (further 0))
