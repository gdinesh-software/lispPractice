(defun foobar(x)
  (remove-if-not #'(lambda (x) (and (> x 1) (< x 5))) 
                 x))

; (print (foobar '(1 2 3 4 5)))
