require_relative "weather"

class Airport 

	include Weather

	CAPACITY = 20
	
	attr_accessor :hangar
	attr_reader   :capacity

	def initialize
		@hangar = []
		@capacity = CAPACITY
	end

	def raise_bad_weather
		raise 'Bad weather' if weather_conditions == 'stormy'
	end

	def track_to_land plane
		raise 'The Airport is full' if is_full?
		raise_bad_weather

		plane.land!
		@hangar << plane
	end

	def track_to_take_off plane
		raise_bad_weather

		plane.take_off!
		@hangar.delete(plane)
	end

	def is_full?
		@hangar.count == CAPACITY
	end

end


















