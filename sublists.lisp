(defun make-sublist (list-of-data)
  (if (null list-of-data)
    nil
    (cons list-of-data
          (make-sublist (rest list-of-data)))))

(print (make-sublist '(fred fie foe)))
