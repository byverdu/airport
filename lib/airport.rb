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
		@hangar << plane
		plane.land!	
	end

	def track_to_take_off plane
		raise_bad_weather
		@hangar.pop
		plane.take_off!
	end

	def is_full?
		@hangar.count == CAPACITY
	end

end


















