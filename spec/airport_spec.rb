# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land

require "./lib/airport"

describe Airport do

	def fill_hangar airport
		airport.capacity.times{ airport.track_to_land Plane.new }
	end

	let(:airport)  { Airport.new   }
	let(:plane)    { double :plane, land!: nil, take_off!: nil }

	context 'taking off and landing' do
		
		it "is able to store planes" do
			expect(airport.hangar).to eq []
		end

		it "has a default capacity" do
			expect(airport.capacity).to eq 20
		end

		it "a plane can land on the airport" do
			allow(airport).to receive(:weather_conditions).and_return('sunny')
			airport.track_to_land(plane)
			expect(airport.hangar.count).to eq 1
		end

		it "a plane is landed once it is put in the hanger" do
			allow(airport).to receive(:weather_conditions).and_return('sunny')
			expect(plane).to   receive(:land!)
			airport.track_to_land(plane)
		end

		it "a plane can take off" do
			allow(airport).to receive(:weather_conditions).and_return('sunny')
			airport.track_to_take_off(plane)
			expect(airport.hangar.count).to eq 0
		end

		it "a plane is token off after leaving the airfield" do
			allow(airport).to receive(:weather_conditions).and_return('sunny')
			expect(plane).to   receive(:take_off!)
			airport.track_to_take_off(plane)
		end
	end


	context 'traffic control' do
		
		it "knows when is full" do
			allow(airport).to receive(:weather_conditions).and_return('sunny')			
			fill_hangar(airport)
			expect(airport).to respond_to(:is_full?)
			expect(airport.hangar.count).to eq 20
		end

		it "can not receive a plane if is full" do
			allow(airport).to receive(:weather_conditions).and_return('sunny')
			fill_hangar(airport)

			expect{ airport.track_to_land(plane) }.to raise_error 'The Airport is full'
		end
	end


	context 'weather conditions' do
		
		it "a plane can not land if the weather is stormy" do
			allow(airport).to receive(:weather_conditions).and_return('stormy')
			expect{ airport.track_to_land(plane) }.to raise_error(RuntimeError)
		end

		it "a plane can not take off if the weather is stormy" do
			allow(airport).to receive(:weather_conditions).and_return('stormy')
			expect{ airport.track_to_take_off(plane) }.to raise_error(RuntimeError)
		end
	end
end








