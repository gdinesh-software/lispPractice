;; A Iterative Definition of Nth Function
(defun it-nth (n lst)
  (when (> (length lst) n)
    (let ((result nil)
          (times 0))
      (dolist (i lst result)
        (if (eql times n)
          (setf result i)
          (setf times (1+ times)))))))

(print (it-nth 2 '(1 2 3 4)))
