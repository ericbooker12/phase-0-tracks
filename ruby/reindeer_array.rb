class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		# following 2 lines gives state
		@gender = gender  # @ symbol gives access to this variable from other methods 
		@ethnicity = ethnicity
		puts "Santa is #{@gender} #{@ethnicity}"
	end

	@@reindeer_ranking = [  # Using class scope for reindeer_ranking variable
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

	#  Getter method
	def reindeer_ranking
		@@reindeer_ranking 
	end

	def get_mad_at(reindeer_name)
		puts "Santa is mad at #{reindeer_name}"
		@@reindeer_ranking.delete(reindeer_name) # delete name from array
		@@reindeer_ranking.push(reindeer_name)	# add it back to the end, can probably comine these into one line

	end


	@@age = 0

	# age getter method
	def age
		@@age
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie."
	end

	def celibrate_birthday
		@@age += 1
	end

	# Setter method for gender
	def gender=(new_gender)
		@gender = new_gender
	end
	

end

santa = Santa.new("male", "Canadian")

puts ""
santa.get_mad_at("Vixen")
puts santa.reindeer_ranking
puts "------"
santa.get_mad_at("Rudolph")
puts santa.reindeer_ranking
puts "------"
santa.get_mad_at("Comet")
puts santa.reindeer_ranking




