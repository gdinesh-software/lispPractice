(defun my-remove(element list-of-element)
  (cond ((null list-of-element)
         nil)
        ((equal (first list-of-element)
                element)
         (my-remove element (rest list-of-element)))
        (T
           (cons (first list-of-element) (my-remove element (rest list-of-element))))))

; (print (my-remove 'A '(a b c d e f a d i n e s h k u m a r)))
