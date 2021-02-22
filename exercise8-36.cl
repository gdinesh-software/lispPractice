(defun count-odd(list-of-elements)
  (cond ((null list-of-elements)
         0)
        ((oddp (first list-of-elements))
         (+ (first list-of-elements)
            (count-odd (rest list-of-elements))))
        (T (count-odd (rest list-of-elements)))))

(print (count-odd '(2 4 6 8 10)))
