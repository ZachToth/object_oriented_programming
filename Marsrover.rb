class Rover
	attr_accessor :x, :y, :direction
	def initialize(x = 5, y = 5, direction = "S")
		@x = x
		@y = y
		@direction = direction
	end

	def read_instructions(instructions)
		instructions.each_char do |instruction|
			if instruction == "M"
				move
			elsif instruction == "L" || instruction == "R"
				rotate(instruction)
			else "That's not a valid command!"
		    end
		end
	end

	def move
		case @direction
		when "N"
			then @y +=1
		when "S"
			then @y -=1
		when "E"
			then @x +=1
		when "W"
			then @x -=1			
		end  

	end

	def rotate(turn)
	
		if ((@direction == "N") && (turn == "L")) || ((@direction == "S") && (turn == "R"))
			@direction = "W" 

		elsif ((@direction == "S") && (turn == "L")) || ((@direction == "N") && (turn == "R"))
			@direction = "E"

		elsif ((@direction == "E") && (turn == "L")) || ((@direction == "W") && (turn == "R"))
			@direction = "N"
		elsif ((@direction == "W") && (turn == "L")) || ((@direction == "E") && (turn == "R"))
			@direction = "S"

		end
	end
	def to_s
		"My new location is #{@x}, #{@y}, #{@direction}"
	end
end

puts "Please input the plateau size"
plateau = gets.chomp

puts "Give the location of the first Rover"
roverone = gets.chomp
rover1 = Rover.new(roverone[0].to_i,roverone[2].to_i,roverone[4].upcase)
puts "Please input new instructions for Rover 1 being L or R to turn left or right
and M to move a space forward. For example LLMRM"
intial = gets.chomp.upcase
rover1.read_instructions(intial)
puts rover1

puts "Give the location of the second Rover"
rovertwo = gets.chomp
rover2 = Rover.new(rovertwo[0].to_i,rovertwo[2].to_i,rovertwo[4].upcase)
puts "Please input new instructions for Rover 2 being L or R to turn left or right
and M to move a space forward. For example LLMRM"
intial2 = gets.chomp.upcase
rover2.read_instructions(intial2)
puts rover2
