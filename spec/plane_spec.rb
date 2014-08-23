require "./lib/plane"

describe Plane do

	let(:plane) { Plane.new }
	
	context "knows what is flying" do

		it "is initialized flying" do
			expect(plane.flying).to be true
		end
		
		it "knows that can land" do
			plane.landing!

			expect(plane.flying).to be false
		end

		it "knows that can take off" do
			plane.landing!

			plane.taking_off!	

			expect(plane.flying).to be true
		end
	end

end