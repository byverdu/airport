# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!

require "airport"
require "plane"

describe "the grand finale" do

	it "all planes can land and take off with sunny weather" do

		# Setup

		airport = Airport.new
		plane_0 = Plane.new
		plane_1 = Plane.new
		plane_2 = Plane.new
		plane_3 = Plane.new
		plane_4 = Plane.new
		plane_5 = Plane.new

		planes = [] << plane_0 << plane_1 << plane_2 << plane_3 << plane_4 << plane_5

		# Testing bad weather

		allow(airport).to receive(:weather_conditions).and_return("stormy")

		planes.each do |plane| 
			expect{airport.track_to_land(plane).to raise_error}
		end

		#Testing good weather

		allow(airport).to receive(:weather_conditions).and_return('sunny')

			# Simulating landing scenario

		planes.each do |plane| 

			airport.track_to_land plane
			expect(plane.status).to eq 'landed'
		end


		# Simulating taking off scenario

		planes.each do |plane| 

			airport.track_to_take_off plane
			expect(plane.status).to eq 'flying'
		end
	end
end

