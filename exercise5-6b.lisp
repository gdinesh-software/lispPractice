(defun throwManyDice()
  (let ((x (random 6))
        (y (random 6)))
    (list (+ x 1) (+ y 1))))

; (format t "~d~%" (throwManyDice))


;;; C part of the question


(defun snakeEyesP(x)
  (and (equal (first x) 1) (equal (second x) 1)))

(defun boxCarsP(x)
  (and (equal (first x) 6) (equal (second x) 6)))


; (defvar x '(6 6))

; (format t "~d~%~d~%" (snakeEyesP x) (boxCarsP x))


(defun instantWinP(x)
  (or (equal x 7) (equal x 11)))

(defun instantLossP(x)
  (or (equal x 2) (equal x 3) (equal x 12)))


; (format t "~d~%~d~%" (instantWinP 10) (instantLossP 11))



; D part of the question


(defun sayThrow(x y)
  (if (< x 12)
  (cond ((equal (+ x y) 2) 'SNAKEEYES)
        ((equal (+ x y) 12) 'BOXCARS)
        (t (+ x y)))
  nil))

; (format t "~d" (sayThrow 6 4))


; E part of the question


(defun craps()
  (let ((x (+ (random 6) 1))
        (y (+ (random 6) 1))
        )
    (cond ((eq (+ x y) 2) (list 'THROW x 'AND y '---YOU 'LOSE---))
          ((eq (+ x y) 12) (list 'THROW x 'AND y '---YOU 'LOSE---))
          ((eq (+ x y) 3) (list 'THROW x 'AND y '---YOU 'LOSE---))
          ((eq (+ x y) 7) (list 'THROW x 'AND y '---YOU 'WIN))
          ((eq (+ x y 11) (list 'THROW x 'AND y '---YOU 'WIN)))
          (T (list 'THROW x 'AND y 'YOUR 'POINT 'IS (+ x y))))))


(format t "~d~%" (craps))
