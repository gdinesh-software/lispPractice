(defun first-odd-list (lst)
  (dolist (i lst)
    (when (oddp i)
      (return i))))

(print (first-odd-list '(2 4 6 8 10 11)))
