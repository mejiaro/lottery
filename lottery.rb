require './generator'
require './result'

class Lottery
	def initialize(age:)
		@age = age
	end

	def play(number:)
		generated_number = Generator.generate_random_number
		result = Result.new

		if result.compare_input(input: number, number: generated_number)
			"You won!"
		else
			"Try again"
		end
	end

	private
	attr_reader :age
end