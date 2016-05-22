class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		# following 2 lines gives state
		@gender = gender  # @ symbol gives access to this variable from other methods 
		@ethnicity = ethnicity
		puts "Santa is #{@gender} #{@ethnicity}"
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

genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A"]
ethnicities = ["black", "latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature", "N/A"]
santas = []

genders.length.times do |i|
	santas << Santa.new(genders[i], ethnicities[i])
end

puts "---------------------------------------------"

genders.each do |gender|
	santas << Santa.new(gender, "japanese")
end

puts "---------------------------------------------"

count = 0
ethnicities.each do |ethnicity|
	santas << Santa.new(genders[count], ethnicity)
	count += 1
end

puts "---------------------------------------------"

count = 0
length = genders.length
while count < length
	santas << Santa.new(genders[count], ethnicities[count])
	count += 1
end


# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical creature (unicorn)")
# santas << Santa.new("N/A", "N/A")


# santa = Santa.new("male", "Canadian")
# santa.speak
# santa.eat_milk_and_cookies("oreo")

# santa = Santa.new("female", "Mexico")
# santa.speak
# santa.eat_milk_and_cookies("hydrox")


