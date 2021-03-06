(defun compute ()
  (format t "Enter your wage per hour : ")
  (setf wage (read))
  (format t "Enter how many hours you worked : ")
  (setf hours (read))
  (format t "You have the gross pay of ~S" (* wage hours)))

(compute)

