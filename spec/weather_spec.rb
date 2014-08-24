require './lib/weather'

describe Weather do 

	let(:airport)  { Airport.new }

	it "only accepts values of stormy or sunny" do
		expect(airport.weather_conditons).to match(/sunny|stormy/)
	end

	it "generates a random value of sunny or stormy" do
		weather = ['sunny','stormy']

		expect(airport.weather_conditons).to eq(weather[0]||weather[1])
	end



end