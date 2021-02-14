(defun longer-than(x y)
  (> (length x) (length y)))

(format t "The Length of x is greater than y : ~d" (longer-than '(1 2 3 4 5 6) '(1 2 3)))


(defvar *globalvariable* 3.1415)
(print *globalvariable*)
