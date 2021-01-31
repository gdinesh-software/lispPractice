(defun addlength(x)
  (cons (length x) x))

(format t "~d" (addlength(addlength '(hello world i am dinesh))))
