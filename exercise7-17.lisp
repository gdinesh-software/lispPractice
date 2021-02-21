(setf list-of-lists '((1 2 3)
                      (1 2 3)
                      (1 2 3)))
(print (length (reduce #'append
               list-of-lists)))

(print (reduce #'+ (mapcar #'length list-of-lists)))
