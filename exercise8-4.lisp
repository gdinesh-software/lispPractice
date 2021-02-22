(defun laugh(n)
  (if (zerop n)
    '()
    (cons 'ha (laugh (- n 1)))))

(print (laugh 0))
(print (laugh 10))
