;;A Recursive Definition of a function that checks
;;If a list if a list has only odd numbers

(defun check-all-odd (lst)
  (cond 
    ((null lst) t)
    ((oddp (first lst)) (check-all-odd (rest lst)))
    (t nil)))

(print (check-all-odd '(1 3 6 7 8)))

;; A Iterative Definition of a Factorial function

(defun it-fact (n)
  (let ((prod 1))
    (dotimes (i n prod)
      (setf prod (* prod (1+ i))))))

(print (it-fact 4))

