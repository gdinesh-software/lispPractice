(defun flatten(tree)
  (cond ((atom tree) (list tree))
        (t (append (flatten (car tree))
                 (flatten (cdr tree))))))

(print (flatten '((a b (r)) a c (a d ((a (b)) r) a))))
