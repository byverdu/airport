

class Airport 

	attr_accessor :hangar

	def initialize
		@hangar = []
	end

	def track_to_land plane
		plane.land!
		@hangar << plane
	end

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