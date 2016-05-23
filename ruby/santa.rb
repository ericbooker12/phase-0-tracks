class Santa
	@age = 0
	
	attr_accessor :gender, :reindeer_ranking, :ethnicity, :age
	

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		# following 2 lines gives state
		@gender = gender  # @ symbol gives access to this variable from other methods 
		@ethnicity = ethnicity
		puts "Santa is #{@gender} #{@ethnicity}"
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

	# def age(age=0)
	# 	@@age = age
	# 	# puts "Santas age is #{@age}"
		

	# end

	def celebrate_birthday
    	@age = @age.to_i + 1
    	# puts "new age = #{@age}"
    	# age = @age
  	end

	def get_mad_at(reindeer_name)
		puts "Santa is mad at #{reindeer_name}"
		new_array = santas_deer
		# puts "new array: #{new_array}"
		new_array.delete(reindeer_name) # delete name from array
		# puts "new array: #{new_array}"
		new_array << reindeer_name # add it back to the end, can probably combine these into one line
		# puts "new array: #{new_array}"

		reindeer_ranking = new_array

	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie."
	end

	

	#----------GETERS AND SETTERS---------
	

	# the following getter and setter methods are commented out because attr_reader and attr_accesor was used above

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

genders = ["agender", "female", "bigender", "male", "gender fluid", "N/A"]
ethnicities = ["black", "latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature", "N/A"]
cookies = ["Oreo", "chips ahoy", "hydrox", "Joe-joes", "Snickerdoodle", "Oatmeal", "sugar"]
santas = []

santa = Santa.new("male", "Canadian")
puts santa.age
santa.celebrate_birthday
# print "Santa says: #{santa.speak}"
# santa.eat_milk_and_cookies("oreo")

# puts santa.reindeer_ranking

birthdays = 60
count = 0
puts santa.age
while count < birthdays
	santa.celebrate_birthday
	count += 1
end

puts santa.age

puts "Santa had #{birthdays} birthdays and is now #{santa.age} years old."
# puts ""
# puts santa.age
# puts santa.ethnicity

puts "Santa's gender is #{santa.gender}."
santa.gender = "female"

puts "Santa's new gender is #{santa.gender}."


puts ""
santa.get_mad_at("Vixen")
puts santa.reindeer_ranking
puts "------"
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


