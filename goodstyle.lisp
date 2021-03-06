(defun good (x y)
      (let* ((avg (/ (+ x y) 2.0))
             (pct (* 100 (/ avg x))))
        (format t "~&Average : ~4D~%Percent : ~4D" avg pct)))

(good 20 2)
