(defun rec-assoc(element x)
  (cond ((equal element (caar x))
         (car x))
        ((null x) nil)
        (t (rec-assoc element (rest x)))))

; (print (rec-assoc 'unix
                  ; '((windows windows10)
                    ; (linux manjaro)
                    ; (unix osx))))

;;; RECURSIVE NTH

(defun rec-nth(num x)
  (if (equal num 1)
    (car x)
    (rec-nth (- num 1)
             (cdr x))))

; (print (rec-nth 3 '(dinesh kumar is the best)))

;;; RECURSIVE FIBONACCI


(defun fibonacci(nth-element)
  (cond ((equal nth-element 1) 1)
        ((equal nth-element 0) 1)
        (T (+ (fibonacci (- nth-element 1))
              (fibonacci (- nth-element 2))))))

; (print (fibonacci 5))

(defun any7p (x)
  (if (equal (first x) 7)
    t
    (any7p (rest x))))

; (defun main()
;   (main))

; (print (main))

(defun double-test-find-first-odd(x)
  (cond ((null x) nil)
        ((oddp (car x)) (car x))
        (t (double-test-find-first-odd (cdr x)))))

; (print (double-test-find-first-odd '(2 2 2 2 2 2 2 2 2 2 3)))

(defun any-odd-p(x)
  (if (null x)
    nil
    (or (oddp (first x))
         (any-odd-p (cdr x)))))

; (print (any-odd-p '(2 6 4)))

;;; ADD NUMS BY 5

(defun addnums(x)
  (if (zerop x)
    0
    (+ x (addnums (- x 1)))))

; (print (addnums 5))

; DOUBLE TAIL RECURSION FOR THIS PROBLEM
; MUST BE THE SAME SYMBOL IN THE LIST

(defun same-symbol(x)
  (cond ((null (cdr x)) T)
        ((equal (car x) (cadr x))
         (same-symbol (cdr x)))
        (t nil)))

; (print (same-symbol '(I I I E)))

(defun count-down(x)
  (cond ((equal x 1) '(1))
        (T (cons x (count-down (- x 1))))))

; (print (count-down 5))

; (defun applicative-count-down(x)
;   (reduce #'* (count-down x)))

; (print (applicative-count-down 1250))

(defun rec-square-list(x)
  (if (null x)
    '()
    (cons (expt (first x) 2)
          (rec-square-list (rest x)))))

; (print (rec-square-list (count-down 20)))

(defun which-length(x y)
  (cond ((null x) 2)
        ((null y) 1)
        (T (which-length (cdr x) (cdr y)))))

(print (which-length (count-down 5)
                     (count-down 1000)))


