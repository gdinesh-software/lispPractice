(defun count-up (element)
  (tr-count-up element nil))

(defun tr-count-up (element result)
  (if (zerop element)
    result
    (tr-count-up (1- element) (cons element result))))
