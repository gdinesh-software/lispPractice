(defun firstplist(listOfNum symbl)
  (eq symbl (first listOfNum)))

(format t "~d" (firstplist '(foo bar) 'foo))
