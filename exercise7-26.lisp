(defvar *database* 
  '((b1 shape brick)
    (b1 color green)
    (b1 size small)
    (b1 supported-by b2)
    (b1 supported-by b3)

    (b2 shape brick)
    (b2 color red)
    (b2 size small)
    (b2 supports b1)
    (b2 left-of b3)

    (b3 shape brick)
    (b3 color red)
    (b3 size small)
    (b3 supports b1)
    (b3 right-of b2)

    (b4 shape pyramid)
    (b4 color blue)
    (b4 size large)
    (b4 supported-by b5)

    (b5 shape cube)
    (b5 color green)
    (b5 size large)
    (b5 supports b4)

    (b6 shape brick)
    (b6 color purple)
    (b6 size large)))

(defun match-element(element-1 element-2)
  (or (equal element-2 '?)
      (equal element-1 element-2)))

; (print (match-element 'BLUE 'BLUE))

; (defun match-triple(assertion pattern)  ;;; A Stupid Recursive Approach
;   (if (match-element (car assertion)
;                         (car pattern))
;          (match-triple (cdr assertion)
;                        (cdr pattern))
;         nil))

(defun match-triple(assertion pattern)
  (every #'match-element
         assertion
         pattern))

; (print (book-match-triple '(B2 COLOR RED)
;                      '(B1 COLOR GREEN)))

(defun fetch(pattern)
  (remove-if-not #'(lambda(x)
                     (match-triple x pattern))
                 *database*))

; (print (fetch '(b5 supports b4)))
; (print (caar (fetch '(? shape cube))))

(defun supporters(object)
  (mapcar #'first
          (fetch (list '? 'supports object))))

; (print (supporters 'b3))

(defun supp-cube(user-block)
  (not (null (fetch (list (caar (fetch '(? shape cube))) 'supports user-block)))))

; (print (supp-cube 'b4))
(defun desc1(user-block)
   (fetch (list user-block '? '?)))

(defun desc2(user-block)
  (mapcar #'cdr (desc1 user-block)))

(defun description(user-block)
  (reduce #'append (desc2 user-block)))

(print (description 'b4))

(defun add-data(data)
  (setf *database* (append (list data) *database*)))

(add-data '(B1 MADE-OF WOOD))
(add-data '(B2 MADE-OF PLASTIC))

(print *database*)

