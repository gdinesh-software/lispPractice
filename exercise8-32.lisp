(defun sum-integers (lst)
  (cond
    ((null lst) 0)
    ((integerp (first lst)) (+ (first lst) (sum-integers (rest lst))))
    (t (sum-integers (rest lst)))))

(print (sum-integers '( 3 boys 3 girls and 1 cup )))

