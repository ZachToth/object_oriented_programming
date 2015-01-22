puts "Please input new instructions being coordinates (x, y) and a direction to face (N,S,E,W)"
instructions.getschomp

class Rover
	attr_accessor :x, :y, :direction
	def initialze(x, y, directon)
		@x = x
		@y = y
		@direction = direction
	end
end