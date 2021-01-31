(defun mystery(x)
  (list (second x) (first x)))

(let x (list 1 2 3 4 5 6))
(format t "~d" (mystery x))
(format t "~d" (mystery 'x))
