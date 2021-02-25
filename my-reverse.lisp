(defun my-reverse (a-list)
  (if (null a-list)
    '()
    (cons (first a-list)
          (my-reverse a-list))))

(print (my-reverse '(1 2 3 4 5)))

;;; I want to do this without making any duplicates
;;; I will be back to do this later.
