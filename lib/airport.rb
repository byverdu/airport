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

	def track_to_land plane
	
		raise 'The Airport is full' if is_full?
		raise 'Bad weather' if self.weather_conditions == 'stormy'

		plane.land!
		@hangar << plane
		
	end


	def track_to_take_off plane
		@hangar.delete(plane)
		plane.take_off!
	end

	def is_full?
		@hangar.length == CAPACITY
	end



			#raise 'The Airport is full' if @hangar.length == CAPACITY


	# # def count_planes
	# # 	@hangar.count
	# # end

	# def receiving_a plane
	# 	@hangar << plane
	# 	plane.landing!
	# end

	# # def taking_off plane
	# # 	true
	# # end

end