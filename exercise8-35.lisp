(defun my-intersection(a-set another-set)
  (cond ((member (first a-set)
                 another-set)
         (my-intersection (rest a-set)
                          another-set))
        ((null a-set)
         '())
        (T (cons (first a-set)
                 (my-intersection (rest a-set)
                                  another-set)))))

(print (my-intersection '(1 2 3 4 5 6 7 8 9)
                        '(2 4 6 8 10)))
