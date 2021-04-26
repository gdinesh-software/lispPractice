(defun my-remove (lst var)
  (cond
    ((null lst) lst)
    ((eql var (first lst)) (my-remove (rest lst) var))
    (t (cons (first lst) (my-remove (rest lst) var)))))

(print (my-remove '(1 1 1 1 1 1 2) 1))
