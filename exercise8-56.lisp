(defun every-other (list-of-elements)
  (every-other-helper list-of-elements 0))

(defun every-other-helper (list-of-elements i)
  (cond 
    ((null list-of-elements) nil)
    ((oddp i) (every-other-helper (rest list-of-elements)
                                  (1- i)))
    (t (cons (first list-of-elements)
             (every-other-helper (rest list-of-elements) (1- i))))))

(print (every-other '(1 2 3 4)))

(defun reverse-rec-helper (lst output)
  (cond 
    ((null lst) output)
    (t (reverse-rec-helper (rest lst)
                           (cons (first lst) output)))))

(defun my-reverse (lst)
  (reverse-rec-helper lst nil))

(print (my-reverse '(1 2 3 4 5 6 7)))

