(defun draw-line (len)
  (cond ((zerop len) nil)
        (t (format t "*")
           (draw-line (1- len)))))

(draw-line 10)
