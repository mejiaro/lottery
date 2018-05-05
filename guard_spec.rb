require './guard'

RSpec.describe Guard do
	describe "#can_participate_in_lottery?" do
		it 'returns true if user age > 17' do
			service = Guard.new
			expect(service.can_participate_in_lottery?(age: 20)).to eq(true)
		end

		it 'returns false if user age < 18' do
			service = Guard.new
			expect(service.can_participate_in_lottery?(age: 17)).to eq(false)
		end
	end
end