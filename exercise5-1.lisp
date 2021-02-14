; (defun good-style(p)
;   (let ((q (+ p 5)))
;     q))

; (format t "~d" (good-style -8))


; (defun price-change(x y)
;   (let* ((diff (- y x))
;          (proportion (/ diff y))
;          (percentage (* proportion 100)))
;     percentage))

; (format t "~d" (price-change 30 40))


(defun toss()
  (let ((x (random 101)))  ;; This function has a cache access i guess so it only outputs heads
    (cond ((> x 50) 'HEAD)
          ((< x 49) 'TAIL)
          (t 'EDGE))))
(format t "~d" (toss))
