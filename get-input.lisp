(defmacro get-input (message input-var)
  `(progn
     (format t "~d" ,message)
     (setf ,input-var (read))))

(defvar *dinesh* nil)
(get-input "Enter How Many Apples you bought today? : " *dinesh*)
(print *dinesh*)
