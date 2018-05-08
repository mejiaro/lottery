require './generator'

RSpec.describe Generator do
	describe '#generate_random_number' do
		it 'generates random number' do
			allow(Kernel).to receive(:rand).with(1..10) {1}
			result = Generator.generate_random_number

			expect(result).to eq(1)
		end
	end
end