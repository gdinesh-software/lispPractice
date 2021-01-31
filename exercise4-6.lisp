(defun myAbs(x)
 (cond ((> x 0) x)
        ((< x 0) (- 0 x))
        (nil 0)))


(format t "~d~%" (myAbs -1))
(format t "~d~%" (myAbs 1))
(format t "~d~%" (myAbs 0))
