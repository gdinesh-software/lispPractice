(defun count-atoms(tree)
  (cond ((null tree)
         0)
        ((atom (first tree))
         (+ 1 (count-atoms (rest tree))))
        (T (count-atoms (rest tree)))))

(print (count-atoms '(A (B) C)))
