load "Plateau.rb"
load "Position.rb"
load "Orientation.rb"
load "Rover.rb"
Plateau.init(5,5)
Plateau.start(1,2,"N")
Plateau.move_rover("LMLMLMLMM")

Plateau.init(5,5)
Plateau.start(2,2,"E")
Plateau.move_rover("MMRMMRMRRM")
