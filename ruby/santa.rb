class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		puts "Santa is a #{@gender} #{@ethnicity}"
	end

	def reindeer
		reindeer_ranking = [
			"Rudolph",
			"Dasher", 
			"Dancer", 
			"Prancer", 
			"Vixen", 
			"Comet", 
			"Cupid", 
			"Donner", 
			"Blitzen"
		]
	end

	def santas_age(age = 0)
		@age = age
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}."
	end

end

santa = Santa.new("male", "Canadian")

santa.speak
santa.eat_milk_and_cookies("oreo")


