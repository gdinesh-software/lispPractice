(defun check-all-odd (lst)
  (do ((i lst (rest i)))
    ((null i) t)
    (if (evenp (first i))
      (return nil))))

(print (check-all-odd '(1 3 5 7 9)))

(defun launch (lst)
  (dolist (i lst)
    (format t "~a..." i)
    (if (zerop i)
      (princ "Launch!!!!"))))

(launch '(10 9 8 7 6 5 4 3 2 1 0))
