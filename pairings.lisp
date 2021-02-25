(defun pairings(x y)
  (if (null x)
    nil
    (cons (list (first x)
                (first y))
          (pairings (rest x)
                    (rest y)))))

(print (pairings '(a b c) '(1 2 3)))
