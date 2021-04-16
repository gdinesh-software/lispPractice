(defun factorial (num)
  (do ((i num (1- i))
       (result 1 (* result i)))
    ((zerop num) result)))

(defun tail-recursive-fact (num)
  (labels ((fact-helper (num acc)
                (if (zerop num)
                  acc
                  (fact-helper (1- num) (* num acc)))))
    (fact-helper num 1)))

(compile 'tail-recursive-fact)
(print (tail-recursive-fact 10000))

