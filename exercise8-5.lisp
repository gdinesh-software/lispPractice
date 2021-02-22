(defun add-up(list-of-num)
  (if (null list-of-num)
    0
    (+ (car list-of-num) (add-up (cdr list-of-num)))))

(print (add-up '(2 3 7)))
