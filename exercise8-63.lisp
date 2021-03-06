(defun my-union (set1 set2)
  (cond ((null set1) set2)
        ((null set2) set1)
        ((equal set1 set2) set1)
        ((member (car set1) set2)
         (my-union (cdr set1) set2))
        (t (my-union (rest set1) (cons (first set1) set2)))))

(defun my-intersection (set1 set2)
  (tr-intersection set1 set2 nil))

(defun tr-intersection (set1 set2 result)
  (cond ((null set1) result)
        ((null set2) set1)
        ((not (member (car set1) set2))
         (tr-intersection (cdr set1) set2 result))
        (t (tr-intersection (cdr set1) set2 (cons (car set1) result)))))

; (print (my-intersection '(1 2 3 4) '(1 2 7 8)))


(defun my-set-diff (set1 set2)
  (tr-set-diff set1 set2 nil))

(defun tr-set-diff (set1 set2 result)
  (cond ((null set1) nil)
        ((null set2) set1)
        ((member (car set2) set1)
         ())))
