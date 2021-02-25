(defun bury (name floors)
  (if (zerop floors)
    (list name)
    (list (bury name (- floors 1)))))

(print (bury 'DINESH 6))
