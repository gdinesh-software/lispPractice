(defun my-intersection (set1 set2)
  (cond
    ((null set1) set2)
    ((null set2) set1)
    ((member (first set1) set2) (my-intersection (rest set1)
                                                 set2))
    (t (my-intersection (rest set1) set2))))

(print (my-intersection '(1 2 3 4) '(4 1 5 2 3)))
