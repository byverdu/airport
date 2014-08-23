class Plane

	def initialize
		@flying = true
	end

	def is_flying?
		@flying
	end
	
	def landed!
		@flying = false
	end

end
