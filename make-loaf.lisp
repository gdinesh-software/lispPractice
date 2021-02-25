(defun make-loaf (num)
  (if (zerop num)
    '()
    (cons 'X (make-loaf (- num 1)))))

(print (make-loaf 5))
