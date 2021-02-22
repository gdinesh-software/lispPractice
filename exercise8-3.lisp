(defun factorial(num)
  (cond ((zerop num) 1)
        (T (* num (factorial (- num 1))))))

(print (factorial 0.0))
