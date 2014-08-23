

class Airport 

	DEFAULT_CAPACITY = 10

	attr_accessor :hangar, :capacity

	def initialize(capacity: DEFAULT_CAPACITY)
		@hangar = []
		@capacity = capacity
	end

	# def count_planes
	# 	@hangar.count
	# end

	def receiving_a plane
		@hangar << plane
		plane.landing!
	end

	# def taking_off plane
	# 	true
	# end

end