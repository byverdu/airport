# Include a weather condition using a module.
# The weather must be random and only have two states "sunny" or "stormy".
# Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
# 
# This will require stubbing to stop the random return of the weather.
# If the airport has a weather condition of stormy,
# the plane can not land, and must not be in the airport

require './lib/weather'

describe Weather do 

	let(:airport)  { Airport.new }

	it "only accepts values of stormy or sunny" do
		expect(airport.weather_conditions).to match(/sunny|stormy/)
	end

	it "generates a random value of sunny or stormy" do
		weather = ['sunny','stormy']

		expect(airport.weather_conditions).to eq(weather[0]||weather[1])
	end
end