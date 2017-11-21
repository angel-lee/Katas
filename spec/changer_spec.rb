require 'changer'

describe Changer do
	let(:changer) {Changer.new}
	it 'has a change method' do
		expect(changer.respond_to?(:change)).to eq(true) 
	end

	it 'returns 1 penny for 1 penny' do
		expect(changer.change(1)).to eq([1])
	end

	it 'returns 3 pennies for 3' do
		expect(changer.change(3)).to eq([1, 1, 1])
	end

	it 'returns 1 nickel for 5' do
		expect(changer.change(5)).to eql([5])
	end

	it 'returns 1 dime for 10' do
		expect(changer.change(10)).to eql([10])
	end 

	it 'returns 2 dimes for 20' do
		expect(changer.change(20)).to eql([10, 10])
	end 

	it 'returns 1 quarter for 25' do
		expect(changer.change(25)).to eql([25])
	end 

	it 'returns 2 quarters for 50' do
		expect(changer.change(50)).to eql([25, 25])
	end 

	it 'returns 3 quarters for 75' do
		expect(changer.change(75)).to eql([25, 25, 25])
	end 

	it 'returns 2 dimes and 4 pennies for 24' do
		expect(changer.change(24)).to eql([10, 10, 1, 1, 1, 1])
	end

	it 'returns 3 quarters and 2 dimes and 4 pennies for 99' do
		expect(changer.change(99)).to eql([25, 25, 25, 10, 10, 1, 1, 1, 1])
	end
end