(defun it-member (x y)
  (when (listp y)
      (dolist (i y)
        (when (eq i x)
          (return t)))))

(print (it-member 10 '(2 4 6 8 1)))
