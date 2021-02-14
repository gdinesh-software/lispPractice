(defun royalWe(listOfWords)
  (sublis '((I . WE)) listOfWords))

(print (royalWe '(IF I LEARN LISP I WILL BE PLEASED)))
