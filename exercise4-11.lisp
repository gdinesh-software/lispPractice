(defun firstzero(x)
  (cond ((equal (first x) 0) "FIRST")
        ((equal (second x) 0) "SECOND")
        ((equal (third x) 0) "THIRD")
        (T "NONE")))

(format t "~a~%" (firstzero b(2 3 2)))
