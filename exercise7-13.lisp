(defun pickTheList(listOfLists)
  (length (remove-if-not #'(lambda (x)
                             (if (equal (length x ) 2)
                               t
                               nil))
                         listOfLists)))

(print (pickTheList '((list of)
                      (list of)
                      (hello world i am dinesh))))
