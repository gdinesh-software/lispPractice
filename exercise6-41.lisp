(setf rooms '((livingroom                  (north frontstairs)
                                            (south diningroom)
                                            (east kitchen))

              (upstairsbedroom              (west library)
                                            (south frontstairs))

              (diningroom                   (north livingroom)
                                            (east pantry)
                                            (west downstairsbedroom))

              (kitchen                      (west livingroom)
                                            (south pantry))

              (pantry                       (north kitchen)
                                            (west diningroom))

              (downstairsbedroom            (north backstairs)
                                            (east diningroom))

              (backstairs                   (south downstairsbedroom)
                                            (north library))

              (frontstairs                  (north upstairsbedroom)
                                            (south livingroom))

              (library                      (east upstairsbedroom)
                                            (south backstairs))))
; A question

(defun choices(roomName)
  (assoc roomName rooms))

; (print (choices 'LIVINGROOM))

; B
(defun lookThatWay(direction roomName)
  (assoc direction (cdr (choices roomName))))

; (print (lookThatWay 'EAST 'LIVINGROOM))

; C

(defvar *location* 'Pantry)
(defun changeRobbie(toThisPlace)
  (setf *location* toThisPlace))

(defun howManyChoices(fromThisPlace)
  (length (cdr (choices fromThisPlace))))

; (print (howManyChoices 'backstairs))

(defun isUpstairsp(roomName)
  (if (or (equal roomName 'upstairsbedroom)
          (equal roomName 'library))
    T
    nil))

; (print (isUpstairsp 'pantry))

(defun isOnStairsp(roomName)
  (if (or (equal roomName 'frontstairs)
          (equal roomName 'backstairs))
    T
    nil))

; (print (isOnStairsp 'downstairsbedroom))

(defun whereIsRobbie()
  (if (isUpstairsp *location*)
    (list 'ROBBIE 'IS 'UPSTAIRS 'IN 'THE *location*)
    (if (isOnStairsp *location*)
      (list 'ROBBIE 'IS 'ON *location*)
      (list 'ROBBIE 'IS 'DOWNSTAIRS 'IN 'THE *location*))))

(changeRobbie 'PANTRY)

(defun move(directionToMove)
  (let ((heCanMoveTo (car (last (lookThatWay directionToMove *location*)))))
    (cond ((null heCanMoveTo)
           (list 'OUCH 'ROBBIE 'HIT 'A 'WALL))
          ((not (null heCanMoveTo))
           (changeRobbie heCanMoveTo)
           (whereIsRobbie)))))

(print (move 'WEST))
(print (move 'WEST))
(print (move 'NORTH))
(print (move 'NORTH))
(print (move 'EAST))
(print (move 'SOUTH))
(print (move 'SOUTH))
(print (move 'EAST))


