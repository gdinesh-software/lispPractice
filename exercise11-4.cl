;; A Iterative Version of Length function

(defun it-length (lst)
  (let ((len 0))
    (dolist (i lst len)
      (setf len (1+ len)))))

(print (it-length '(1 2 3 4)))
