(defun space-over (n)
  (cond ((zerop n) nil)
        ((> 0 n) (format t "Error"))
        (t (format t " ")
           (space-over (1- n)))))

(defun test (n)
  (format t "~&>>>")
  (space-over n)
  (format t "<<<"))

; (test 5)

(defun plot-one-point (plotting-string y-val)
  (space-over y-val)
  (format t "~A~%" plotting-string))

; (plot-one-point "*" 4)

(defun plot-points (plotting-string list-of-values)
  (cond ((null list-of-values) nil)
        (t (plot-one-point plotting-string (car list-of-values))
           (plot-points plotting-string (rest list-of-values)))))

; (plot-points "<>" '(4 6 8 10 8 6 4))

(defun generate (start end)
  (if (eql start end)
    (list end)
    (cons start (generate (1+ start) end))))

; (print (generate -3 3))

(defun make-graph (func start end)
  (plot-points "*" (mapcar func (generate start end))))

(defun square (x)
  (* x x))

(make-graph #'square -7 7)
