
(defun alloddp(list-of-num)
  (cond ((null list-of-num) t)
        ((evenp (first list-of-num)) nil)
        (t (alloddp (rest list-of-num)))))


(print (alloddp '(1 2 3 4)))
