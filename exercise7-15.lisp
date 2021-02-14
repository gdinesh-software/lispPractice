(defun rank(card)
    (car card))

(defun suit(card)
    (cadr card))

; (print (rank '(2 spades)))
; (print (suit '(2 spades)))

(defvar *myhand* '((3 hearts)
                   (5 clubs)
                   (2 diamonds)
                   (4 diamonds)
                   (ace spades)))
(defun count-suit (suitOfCard yourHand)
  (length (remove-if-not #'(lambda (x)
                     (if (equal (suit x) suitOfCard)
                       T
                       nil)) yourHand)))

; (print (count-suit 'diamonds *myhand*))

(defvar *colors* '((clubs black)
                   (diamonds red)
                   (hearts red)
                   (spades black)))

(defun color-of (a-card)
  (cadr (assoc (suit a-card) *colors*)))

; (print (color-of '(2 clubs)))
; (print (color-of '(6 hearts)))


(defun first-red (hand-of-cards)
  (first (remove-if-not #'(lambda (x)
                            (if (equal (color-of x) `RED)
                              T
                              nil))
                        hand-of-cards)))

; (print (first-red *myhand*))

(defun black-cards(hand-of-cards)
  (remove-if-not #'(lambda (x)
                     (if (equal (color-of x) 'BLACK)
                       T
                       nil))
                 hand-of-cards))

; (print (black-cards *myhand*))

(defun what-ranks(your-suit your-hand)
  (mapcar #'rank (remove-if-not #'(lambda (x)
                     (if (equal (suit x) your-suit)
                       T
                       nil))
                                  your-hand)))
; (print (what-ranks 'spades *myhand*))

(defvar *allranks* '(2
                     3
                     4
                     5
                     6
                     7
                     8
                     9
                     10
                     jack
                     queen
                     king
                     ace))

(defun beforep (x y listOfData)
  (member y (member x listOfData)))

(defun higher-rank-p(card1 card2)
  (not (null (beforep (rank card1)
          (rank card2)
          *allranks*))))

; (print (higher-rank-p '(queen spades)
;                       '(jack spades)))

(defun highest-rank-p(hand-of-cards)
  (remove-if-not #'(lambda (x y)
                     (if (beforep x y)
                       t
                       nil))
                 (mapcar #'rank hand-of-cards)))

(print (highest-rank-p *myhand*))

