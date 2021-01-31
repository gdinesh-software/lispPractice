;;;; 1 is paper, 2 is scissor, 3 is rock
(defun playGame(user1 user2)
  (cond ((and (eq user1 'SCISSORS) (eq user2 'PAPER)) "USER1 WINS")
        ((and (eq user1 'SCISSORS) (eq user2 'ROCK)) "USER2 WINS")
        ((and (eq user1 'SCISSORS) (eq user2 'SCISSORS)) "TIE")
        ((and (eq user1 'PAPER) (eq user2 'SCISSORS)) "USER2 WINS")
        ((and (eq user1 'PAPER) (eq user2 'ROCK)) "USER1 WINS")
        ((and (eq user1 'PAPER) (eq user2 'PAPER)) "TIE")
        ((and (eq user1 'ROCK) (eq user2 'SCISSORS)) "USER1 WINS")
        ((and (eq user1 'ROCK) (eq user2 'PAPER)) "USER2 WINS")
        ((and (eq user1 'ROCK) (eq user2 'ROCK)) "TIE")
        (t "WRONG OPTION")))

(format t "~d" (playGame 'SCISSORS 'PAPER))
