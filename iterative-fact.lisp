(defun it-fact (n)
  (let ((prod 1))
    (dotimes (i n prod)
      (setf prod (* prod (1+ i))))))

(print (it-fact 1000))
