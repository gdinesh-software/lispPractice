(defun it-assoc (element lst)
  (when (listp lst)
    (dolist (i lst)
      (when (eq element (first i))
        (return i)))))

(print (it-assoc 'dinesh '((dinesh . hello)
                           (lali . foo)
                           (sathiya . bar))))
