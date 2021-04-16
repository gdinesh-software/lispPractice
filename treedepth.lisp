(defun tree-depth(x)
  (if (atom x)
    0
    (1+ (max (tree-depth (car x))
             (tree-depth (cdr x))))))

(print (tree-depth '((1 . 2) (1 . 3))))
