require_relative 'Calculator'

describe Calculator do 
	let(:calculator) {Calculator.new}
	it "adds two integers" do 
		expect(calculator.add(3,4)).to eq 7
	end

	it "subtracts two integers" do 
		expect(calculator.subtract(7,1)).to eq 6
	end

	it "multiplies two integers" do 
		expect(calculator.multiply(2,3)).to eq 6
	end
end