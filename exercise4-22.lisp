(defun tellScale(temp scale)
  (if (eq scale 'F)
    (if (> temp 212)
      T)
    (if (and (> temp 100) (eq scale 'C))
      T
      nil)))

(defun tellScaleCond(temp scale)
  (cond ((and (eq scale 'F) (> temp 212)) T)
        ((and (eq scale 'C) (> temp 100)) T)
        (T nil)))

(format t "~d" (tellScaleCond 211 'F))
