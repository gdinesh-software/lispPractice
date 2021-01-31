(defun emphasize(x)
  (cond ((listp x) (cons 'very x))
        (nil nil)))

(format t "~d" (emphasize '(very long day)))
