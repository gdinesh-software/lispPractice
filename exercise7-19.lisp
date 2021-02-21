(defun all-odd(list-of-num)
  (every #'oddp list-of-num))

(defun none-odd(list-of-num)
  (every #'evenp list-of-num))

(defun not-all-odd(list-of-num)
  (not (all-odd list-of-num)))

(defun not-none-odd(list-of-num)
  (not (none-odd list-of-num)))


