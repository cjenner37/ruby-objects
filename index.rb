class Calculator
	def self.add(x, y)
		y + x
	end

	def self.subtract(x, y)
		x - y
	end

	def self.multiply(x, y)
		x * y
	end

	def self.divide(x, y)
		x / y
	end
end

# myCalculator = Calculator.new 37, 25
# puts Calculator.divide 6, 2


class Elevator
	attr_accessor :floor

	def initialize
		@floor = 1
	end

	def go_up
		if @floor < 12
			@floor += 1 
			cheery_greeting
		else
			puts "You can't go up past the top, mate."
		end
	end

	def go_down
		if @floor > 0
			@floor -= 1
			cheery_greeting
		else
			puts "Go down? You're at the bottom, dear person."
		end
	end

	def go_to
		puts "Which floor would the human require?"
		x = gets.to_i
		if x < 13 && x > 0
			@floor = x
			cheery_greeting
		else
			puts "that's not a real floor ya dingus. the top floor is 12 and the bottom is 1"
			go_to
		end
	end

	def cheery_greeting
		puts "Bless thee, good neighbors, what cheer? Please enjoy floor #{@floor}."
	end

end

