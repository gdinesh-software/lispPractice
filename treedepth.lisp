(defun tree-depth(a-tree)
  (cond ((atom a-tree) 0)
        (t (+ 1 (max (tree-depth (car a-tree))
              (tree-depth (cdr a-tree)))))))

(print (tree-depth '((a . b) . (c . d))))
(print (max 100 104))
