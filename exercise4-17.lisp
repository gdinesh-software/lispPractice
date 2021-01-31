(defun main(x y)
  (cond ((and (or (eq x 'BOY) (eq x 'GIRL)) (eq y 'CHILD)) T)
        ((and (or (eq x 'MAN) (eq x 'WOMAN)) (eq y 'ADULT)) T)
        (T nil)))

(format t "~d" (main 'MAN 'CHILD))
