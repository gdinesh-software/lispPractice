(defun chop (x)
  (if (null x)
    nil
    (setf x (car x))))

(defparameter x '(1 2 3 4))
(print (chop x))
(print x)
