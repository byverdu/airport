require "airport"


describe Airport do

	let(:airport)  { Airport.new   }
	let(:plane)    { double :plane }

	it "is able to store planes" do
		expect(airport.hangar).to eq []
	end

	it "a plane can land on the airport" do
		expect(plane).to receive(:land!)

		airport.track_to_land(plane)

		expect(airport.hangar.length).to eq 1
	end

	it "a plane can take off" do
		expect(plane).to receive(:take_off!)

		airport.track_to_takeoff plane

		expect(airport.hangar.length).to eq 0
	end


end