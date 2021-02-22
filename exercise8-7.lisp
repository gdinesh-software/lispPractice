(defun rec-member(element x)
  (cond ((equal element (car x))
         x)
        ((null x) nil)
        (T 
          (rec-member element (cdr x)))))

(print (rec-member 2 '(1 2 3 4)))
