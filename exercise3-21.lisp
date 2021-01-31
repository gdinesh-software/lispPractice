(defun long-function (x)
  (cons (third x)
        (list (second x)
              (fourth x)
              (first x))))

(format t "~d" (long-function '(firstelement secondelement thirdelement fourthelement)))
