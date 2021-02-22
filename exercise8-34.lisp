(defun my-intersection(a-set another-set)
  (cond ((equal (first a-set)
                (first another-set))
         (cons (first a-set)
               (my-intersection (rest a-set)
                                (rest another-set))))
        ((null a-set) '())
        ((null another-set) '())
        (T (my-intersection (rest a-set)
                            (rest another-set)))))

(print (my-intersection '(1 2 3 4 5 6 7 8 9 10 11)
                        '(1 2 3 4 5 6 7 8 9)))
