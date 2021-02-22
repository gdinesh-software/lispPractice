(defun sum-numeric-elements(list-of-elements)
  (cond ((numberp (first list-of-elements))
         (+ (first list-of-elements)
            (sum-numeric-elements (rest list-of-elements))))
        ((null list-of-elements)
         0)
        (T (sum-numeric-elements (rest list-of-elements)))))

; (print (sum-numeric-elements '(2 bears 3 bowls and 1 girls)))
