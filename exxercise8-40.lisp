(defun count-cons(a-list)
  (cond ((atom a-list)
         0)
        (t
          (+ 1 (count-cons (car a-list))
             (count-cons (cdr a-list))))))

(print (count-cons '()))
