require "./lib/plane"

describe Plane do

	let(:plane) { Plane.new }
	
	context "knows what is flying" do

		it "knows when is on the air" do
			expect(plane.is_flying?).to be true
		end

		it "knows when is landed" do
			plane.landed!

			expect(plane.is_flying?).to be false
		end
	end

end