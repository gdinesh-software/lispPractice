(defmacro set-mutual (a b)
  `(progn (setf ,a ',b)
          (setf ,b ',a)))

(setq a 10)
(setq b 4)
(print (list a b))
(set-mutual a b)
(print (list a b))
