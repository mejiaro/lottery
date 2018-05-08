require './lottery'
require './result'
require './generator'

RSpec.describe Lottery do
	describe 'play' do
		it 'returns success message when user wins the lottery' do
			result_service = Result.new

			allow(result_service).to receive(:compare_input).with(input: 5, number: 5).and_return(true)
			allow(Generator).to receive(:generate_random_number).and_return(5)
			
			lottery = Lottery.new(age: 20)

			result = lottery.play(number: 5)

			expect(result).to eq("You won!")
		end

		it 'returns failure message when user doesnt win' do
			result_service = Result.new

			allow(result_service).to receive(:compare_input).with(input: 5, number: 6).and_return(true)
			allow(Generator).to receive(:generate_random_number).and_return(6)
			lottery = Lottery.new(age: 20)

			result = lottery.play(number: 5)

			expect(result).to eq("Try again")
		end
	end
end