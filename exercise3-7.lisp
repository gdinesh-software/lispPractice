(defun kilometers-per-litre(initial final litres)
  (/ (- final initial) litres))


(format t "~d" (kilometers-per-litre 10 40 1))
