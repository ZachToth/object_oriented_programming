class Rover
	attr_accessor :x, :y, :direction
	def initialize(x = 5, y = 5, direction = "S")
		@x = x
		@y = y
		@direction = direction
	end

	def read_instructions
		instructions.each_char do |instruction|
			if instruction == "M"
				move
			elsif instruction == "L" || instruction == "R"
				rotate
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

	def rotate
	
		if ((@direction == "N") && (read_instructions == "L")) || ((read_instructions == "S") && (read_instructions == "R"))
			@direction = "W" 

		elsif ((@direction == "S") && (read_instructions == "L")) || ((@direction == "N") && (read_instructions == "R"))
			@direction = "E"

		elsif ((@direction == "E") && (read_instructions == "L")) || ((@direction == "W") && (read_instructions == "R"))
			@direction = "N"
		elsif ((@direction == "W") && (read_instructions == "L")) || ((@direction == "E") && (read_instructions == "R"))
			@direction = "S"

		end
	end
	def location
		"My new location is #{@x}, #{@y}, #{@direction}"
	end
end

# puts "Please input the plateau size"
# plateau = gets.chomp


puts "Give the location of the first Rover"
roverone = gets.chomp.upcase
puts roverone
rover1 = Rover.new(roverone[0], roverone[2], roverone[4])
rover1.location

puts "Please input new instructions being L or R to turn left or right
and M to move a space forward. For example LLMRM"
instructions = gets.chomp.upcase
# rover1.read_instructions
rover1.location
