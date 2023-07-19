class Passenger
	attr_reader :name,
							:age,
							:adult,
							:driver

	def initialize(data)
		@name = data["name"]
		@age = data["age"]
		@adult = false
		@driver = false
	
	end

	def adult?
		if @age > 17
			@adult = true
		end
		@adult
	end

	def driver?
		@driver = false
	end

	def drive
		@driver = true
	end

	
end