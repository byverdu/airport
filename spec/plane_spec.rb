# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"

require "./lib/plane"

describe Plane do

	let(:plane)   { Plane.new }
	let(:airport) { double :airport }

	it "has a flying status when is initialized" do
		expect(plane.status).to eq 'flying'
	end

	it "can land into the airport" do
		expect(plane).to respond_to(:land!)
	end

	it "can take off from the airport" do
		expect(plane).to respond_to(:take_off!)
	end

	it "changes his status (flying to landed) once is landed" do
		plane.land!
		expect(plane.status).to eq 'landed'
	end

	it "changes its status to flying after taking of" do
		plane.land!
		plane.take_off!
		expect(plane.status).to eq 'flying'
	end

end