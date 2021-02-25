(defun count-up(end)
  (if (zerop end)
    '()
    (append (count-up (- end 1))
            (list end))))

(print (count-up 5))
