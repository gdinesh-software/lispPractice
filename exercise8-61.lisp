(defun factorial (element)
  (tr-factorial element 1))

(defun tr-factorial (element n)
  (if (zerop element)
    n
    (tr-factorial (1- element) (* n element))))

(print (factorial 1001))
