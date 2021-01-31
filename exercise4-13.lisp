(defun howcompute(x y z)
  (cond ((eq (+ x y) z) "SUM OF")
        ((eq (- x y) z) "DIFFERENCE OF")
        ((eq (* x y) z) "PRODUCT OF")
        ((eq (/ x y) z) "DIVISION OF")
        (t '(BEATS ME))))


(format t "~d~%" (howcompute 20 3 5))
