(defun my-union (set1 set2)
  (cond ((null set1) set2)
        ((null set2) set1)
        ((member (first set1) set2)
            (my-union (rest set1) set2))
        (T (cons (first set1)
                 (my-union (rest set1) set2)))))

(print (my-union '(1 2 3 4) '(2 8 3 9)))
