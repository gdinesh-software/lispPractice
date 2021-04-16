(with-open-file (myfile "helloworld.txt" :direction :output)
  (format myfile "hello, i am writing this in lisp"))
