(defun cookie-monster ()
  (format t "~&Give me Cookie !!!~%")
  (format t "Cookie ? : ")
  (let* ((x (read)))
    (if (eql x 'cookie)
      (format t "Thank you! MUNCH MUNCH MUNCH... Burp")
      (progn (format t "ME NO WANT ~S" x)
             (cookie-monster)))))

(cookie-monster)
