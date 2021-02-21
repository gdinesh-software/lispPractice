(setf a-set '((A B C) (C D A) (F B D) (G))) ;A Set
(print (reduce #'union a-set))
