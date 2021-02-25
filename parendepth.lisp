(defun parendepth(a-tree)
  (if (atom a-tree)
    0
    (max (+ 1 (parendepth (first a-tree)))
            (parendepth (rest a-tree)))))

(print (parendepth '(A B ((C) D) E)))
