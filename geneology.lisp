(setf *mydatabase* '((colin nil nil)
                     (deirdre nil nil)
                     (arthur nil nil)
                     (kate nil nil)
                     (frank nil nil)
                     (linda nil nil)
                     (suzanne colin deirdre)
                     (bruce arthur kate)
                     (charles arthur kate)
                     (david arthur kate)
                     (ellen arthur kate)
                     (george frank linda)
                     (hillary frank linda)
                     (andre nil nil)
                     (tamara bruce suzanne)
                     (vincent bruce suzanne)
                     (wanda nil nil)
                     (ivan george ellen)
                     (julie george ellen)
                     (marie george ellen)
                     (nigel andre hillary)
                     (frederick nil tamara)
                     (zelda vincent wanda)
                     (joshua ivan wanda)
                     (quentin nil nil)
                     (robert quentin julie)
                     (olivia nigel marie)
                     (peter nigel marie)
                     (erica nil nil)
                     (yvette robert zelda)
                     (diane peter erica)))

(defun father (name)
  (cadr (assoc name *mydatabase*)))

(defun parents (name)
  (remove nil (rest (assoc name *mydatabase*))))

(defun mother (name)
  (caddr (assoc name *mydatabase*)))

(defun children (name)
   (mapcar #'first (remove-if-not #'(lambda (x)
                     (or (eq (third x) name)
                         (eq (second x) name))) *mydatabase*)))

(defun siblings (name)
  (remove name (union (children (first (parents name)))
                      (children (second (parents name))))))


(defun mapunion (function-to-call data)
  (reduce #'union (mapcar function-to-call data)))

(defun grandparents (name)
  (mapunion #'parents (mapunion #'parents (list name))))

(defun cousins (name)
  (mapunion #'children (mapunion #'siblings (mapunion #'parents (list name)))))


(defun descended-from-p (your-name your-ancestor?)
  (cond ((null your-name) nil)
        ((member your-ancestor? (parents your-name)) t)
        (t (or (descended-from-p
                 (father your-name) your-ancestor?)
               (descended-from-p
                 (mother your-name) your-ancestor?)))))

; (print (descended-from-p 'TAMARA 'ARTHUR))

(defun ancestors (name)
  (cond ((null name) nil)
        (t (union (parents name)
                  (union (ancestors (father name))
                         (ancestors (mother name)))))))

; (print (ancestors 'marie))

(defun generation-gap (name ancestor)
  (g-gap-helper name ancestor 0))

(defun g-gap-helper (name ancestor n)
  (cond ((null name) n)
        ((equal name ancestor) n)
        (t (or (g-gap-helper (father name)
                             ancestor (1+ n))
               (g-gap-helper (mother name)
                             ancestor (1+ n))))))

; (print (generation-gap 'frederick 'colin))

(print (descended-from-p 'robert 'deirdre))
(print (ancestors 'yvette))
(print (generation-gap 'olivia 'frank))
(print (cousins 'peter))
(print (grandparents 'olivia))

