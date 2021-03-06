(defun draw-line (len)
  (cond ((zerop len) nil)
        (t (format t "*")
           (draw-line (1- len)))))

(defun draw-box (len breadth)
  (cond ((zerop breadth) nil)
        (t (draw-line len)
           (format t "~&")
           (draw-box len (1- breadth)))))

(print (draw-box 10 4))
