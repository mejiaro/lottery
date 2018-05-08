require './result'

RSpec.describe Result do 
	describe '#user_input_number_comparison' do

		it 'returns true if input number == generated number' do
			result = Result.new

			answer = result.compare_input(input: 1, number: 1)

			expect(answer).to eq(true)
		end

		it 'returns false if input number != generated number' do
			result = Result.new

			answer = result.compare_input(input: 1, number: 2)

			expect(answer).to eq(false)
		end
	end
end