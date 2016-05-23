class Santa
	
	
	attr_accessor :gender, :reindeer_ranking, :ethnicity, :age

	def age(age = 0)
		@age.to_i
	end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		# following 2 lines gives state
		@gender = gender  # @ symbol gives access to this variable from other methods 
		@ethnicity = ethnicity
	end

	def santas_deer
		@reindeer_ranking = [
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

	def celebrate_birthday
    	@age = @age.to_i + 1
  	end

	def get_mad_at(reindeer_name)
		puts "Santa is mad at #{reindeer_name}"
		new_array = santas_deer
		new_array.delete(reindeer_name) # delete name from array
		new_array << reindeer_name # add it back to the end, can probably combine these into one line
		reindeer_ranking = new_array

	end

	def speak
		"Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		"That was a good #{cookie} cookie."
	end

	

	#----------GETERS AND SETTERS---------

	# the following getter and setter methods are commented out 
	# because attr_reader and attr_accesor are used above

	# def reindeer_ranking
	# 	@@reindeer_ranking
	# end

	# age getter method
	# def age
	# 	@age
	# end

	# ethnicity getter method
	# def ethnicity
	# 	@ethnicity
	# end

	# gender setter method
	# def gender
	# 	@gender
	# end

	# # gender setter method
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	# def age=(new_age)
	# 	@age = new_age
	# end
	

end # end of Santa class

# -----------DRIVER CODE------------

# utilize celebrate_birthday method multiple times
def make_santa_older(santa, years)
	birthdays = years
	count = 0
	while count < birthdays
		santa.celebrate_birthday
		count += 1
	end
	puts "After #{birthdays} birthdays, Santa is #{santa.age} years old."
end

# Create an array of Santa instances
def create_santas(how_many)
	lots_of_santas = []
	how_many_santas = how_many
	count = 0
	while count < how_many_santas
		print "#{count + 1}. " 
		lots_of_santas << Santa.new("non-gender", "neutral")
		count += 1
	end
	return lots_of_santas
end

# Set random attributes for santa array
def set_attributes(santas, genders, ethnicities, cookies)

	count = 1
	santas.each do |santa|
		
		# Set random attributes
		santa.ethnicity = ethnicities[(rand() * ethnicities.length).to_i]
		santa.age = (rand() * 140).to_i
		santa.gender = genders[(rand() * genders.length).to_i]
		rdm_cookie = cookies[(rand() * cookies.length).to_i]

		50.times {print "-"}
		puts "\n"
		puts "SANTA NUMBER #{count}:"
		puts santa.speak
		puts "Ethnicity: #{santa.ethnicity}"
		puts "Age: #{santa.age}"
		puts "Gender: #{santa.gender}"
		print "Santa says: \'"
		puts "#{santa.eat_milk_and_cookies(rdm_cookie)}\'"
		
		count += 1
	end
end

genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A"]
ethnicities = ["Guatemalan", "American", "Norwegian", "Chilean", 
	"Canadian", "latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature", "N/A"]
cookies = ["Oreo", "chips ahoy", "hydrox", "Joe-joes", "Snickerdoodle", "Oatmeal", "sugar", "chocolate-chip"]
santas = []

# Create your santa array here. Amount of santas is argument.
santa_array = create_santas(256)

# set random attributes here
set_attributes(santa_array, genders, ethnicities, cookies)



#****************************TEST CODE****************************
# santa = Santa.new("Finnish", "female")
# puts santa.age
# make_santa_older(santa, 60)
# puts "Santa had #{birthdays} birthdays and is now #{santa.age} years old."
# # puts ""
# # puts santa.age
# # puts santa.ethnicity

# puts "Santa's gender is #{santa.gender}."
# santa.gender = "female"

# puts "Santa's new gender is #{santa.gender}."


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


