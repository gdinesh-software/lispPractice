(defun anyoddp(list-of-num)
  (if (null list-of-num)
    nil
    (or (oddp (car list-of-num))
        (anyoddp (cdr list-of-num)))))

(print (anyoddp '(4 6 8 10 12)))
