(defun dot-prin1 (x)
  (cond ((atom x) (format t "~S" x))
        (t (format t "(")
           (dot-prin1 (car x))
           (format t " . ")
           (dot-prin1 (cdr x))
           (format t ")"))))

(defvar *total-glasses* 0)
(defun sell (x)
  (incf *total-glasses* x)
  (format t "~&So far we had sold ~S glasses" *total-glasses*))

(sell 3)
