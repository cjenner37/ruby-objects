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
puts Calculator.divide 6, 2


class Elevator
	attr_accessor :floor

	def initialize
		@floor = 1
	end

	def go_up
		if @floor < 12
			@floor += 1 
			cheery_greeting
		end
	end

	def go_down
		if @floor > 0
			@floor -= 1
			cheery_greeting
		end
	end

	def cheery_greeting
		puts "Bless thee, good neighbors, what cheer? Please enjoy floor #{@floor}."
	end

end

elevator = Elevator.new
elevator.go_up