class Santa

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		# following 2 lines gives state
		@gender = gender  # @ symbol gives access to this variable from other methods 
		@ethnicity = ethnicity
		puts "Santa is #{@gender} #{@ethnicity}"
	end

	@@reindeer_ranking = [
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

	def reindeer_ranking
		@@reindeer_ranking
	end

	def get_mad_at(reindeer_name)
		puts "Santa is mad at #{reindeer_name}"
		@@reindeer_ranking.delete(reindeer_name) # delete name from array
		@@reindeer_ranking.push(reindeer_name)	# add it back to the end, can probably combine these into one line

	end


	@@age = 0

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie."
	end

	def celibrate_birthday
		@@age += 1
	end

	#----------GETERS AND SETTERS---------

	# age getter method
	def age
		@@age
	end

	# ethnicity getter method
	def ethnicity
		@ethnicity
	end

	# gender setter method
	def gender
		@gender
	end

	# gender setter method
	def gender=(new_gender)
		@gender = new_gender
	end
	

end # end of Santa class

genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A"]
ethnicities = ["black", "latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature", "N/A"]
cookies = ["Oreo", "chips ahoy", "hydrox", "Joe-joes", "Snickerdoodle", "Oatmeal", "sugar"]
santas = []

santa = Santa.new("male", "Canadian")
print "Santa says: #{santa.speak}"
santa.eat_milk_and_cookies("oreo")
puts "Santas age is #{santa.age}"
santa.celibrate_birthday
puts "Santas age is #{santa.age}"

birthdays = 60
count = 0
while count < birthdays
	santa.celibrate_birthday
	count += 1
end

puts "Santa had #{birthdays} birthdays and is now #{santa.age} years old."
puts ""
puts santa.age
puts santa.ethnicity
puts santa.gender

# puts ""
# santa.get_mad_at("Vixen")
# puts santa.reindeer_ranking
# puts "------"
# santa.get_mad_at("Rudolph")
# puts santa.reindeer_ranking
# puts "------"
# santa.get_mad_at("Comet")
# puts santa.reindeer_ranking





# genders.length.times do |i|
# 	santas << Santa.new(genders[i], ethnicities[i])
# end

# puts "---------------------------------------------"

# genders.each do |gender|
# 	santas << Santa.new(gender, "japanese")
# end

# puts "---------------------------------------------"

# count = 0
# ethnicities.each do |ethnicity|
# 	santas << Santa.new(genders[count], ethnicity)
# 	count += 1
# end

# puts "---------------------------------------------"

# count = 0
# length = genders.length
# while count < length
# 	santas << Santa.new(genders[count], ethnicities[count])
# 	santas[count].speak
# 	santas[count].eat_milk_and_cookies(cookies[count])
# 	age = santas[count].santas_age(74 + count)
# 	puts "Santa is #{age}"
# 	count += 1
# 	puts "----------------"
# end

# puts "---------------------------------------------"

# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# santa = Santa.new("female", "Mexico")
# santa.speak
# santa.eat_milk_and_cookies("hydrox")


