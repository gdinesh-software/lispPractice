(defun my-subst(new old tree)
  (cond ((equal tree old) new)
        ((atom tree) tree)
        (t (cons (my-subst new old (car tree))
                 (my-subst new old (cdr tree))))))

(print (my-subst 1 3 '(1 2 3 (1 2 3))))
