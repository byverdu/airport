require "./lib/airport"

describe Airport do

	def fill_hangar airport
		airport.capacity.times{ airport.track_to_land Plane.new }
	end

	let(:airport)  { Airport.new   }
	let(:plane)    { double :plane }

	it "is able to store planes" do
		expect(airport.hangar).to eq []
	end

	it "has a default capacity" do
		expect(airport.capacity).to eq 20
	end

	it "a plane can land on the airport" do
		expect(plane).to receive(:land!)

		airport.track_to_land(plane)

		expect(airport.hangar.length).to eq 1
	end

	it "a plane can take off" do
		expect(plane).to receive(:land!)
		expect(plane).to receive(:take_off!)

		airport.track_to_land plane

		airport.track_to_take_off plane

		expect(airport.hangar.length).to eq 0
	end

	it "knows when is full" do
		fill_hangar(airport)

		expect(airport).to respond_to(:is_full?)

		expect(airport.hangar.length).to eq 20
	end

	it "can not receive a plane if is full" do
		fill_hangar(airport)

		expect{airport.track_to_land(plane)}.to raise_error(RuntimeError)
	end

end








