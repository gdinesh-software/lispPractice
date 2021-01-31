(defun half(x)
  (/ x 2.0))

(defun cube(x)
  (expt x 3))

(defun onemorep(x y)
  (eq (+ x 1) y))

(format t "~d" (onemorep 2 3))

