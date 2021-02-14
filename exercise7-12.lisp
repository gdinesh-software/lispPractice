(defun thep(anElement)
  (if (equal anElement 'THE)
    t
    nil))

(defun foobar(listOfWords)
  (length (remove-if-not #'thep listOfWords)))

(print (foobar '(HELLO EVERYONE I AM DINESH THE SCIENTIST)))
