(defun mid-add1(listOfNum)
  (setf (second listOfNum) 3)
  listOfNum)

(format t "~d" (mid-add1 '(1 2 3)))

