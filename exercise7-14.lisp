(defun myIntersection(set1 set2)
  (remove-if #'(lambda (element) (not (member element set2)))
             set1))

; (print (myIntersection '(1 2 3 4 5) '(2 4 6)))

(defun myUnion (set1 set2)
  (remove-duplicates (append set1 set2)))


(print (myUnion '(1 2 3) 
                '(2 4 2 3 7)))

