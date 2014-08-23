require "airport"


describe Airport do

	let(:airport)        { Airport.new }
	let(:flying_plane)   { double :plane, flying: true}
	let(:landed_plane)   { double :plane, flying: false}

	it "is able to store planes" do
		expect(airport.hangar).to eq []
	end

	it "should be able to have a capacity" do
		expect(airport.capacity).to eq(10)
	end

	it "should be able to set his capacity" do
		airport = Airport.new(:capacity => 20)

		expect(airport.capacity).to eq(20)
	end

	it "a plane can land on the airport" do
		airport.receiving_a(flying_plane)

		expect(airport.hangar.length).to eq 1
	end

	it "a plane changes his status once is landed" do
		allow(flying_plane).to receive(:landing!)

		airport.receiving_a(flying_plane)
		#flying_plane.landing!

		expect(flying_plane.landing!).to be false
	end

	xit "a plane can take off" do
		#airport.taking_off(plane)).to be true
	end


end