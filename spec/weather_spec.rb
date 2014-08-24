require './lib/weather'

describe Weather do 

	let(:airport)  { Airport.new }

	it "only accepts values of stormy or sunny" do
		expect(airport.weather_conditons).to match_array(['sunny','stormy'])
	end

	xit "generates a random value of sunny or stormy" do
		weather = ['sunny','stormy']

		expect()

	end



end