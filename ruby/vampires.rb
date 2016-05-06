def ask_vampire
	puts "Enter number of employees."
	num_of_employees = gets.chomp

	puts "What is your name."
	# name = gets.chomp
	name = "Eric"

	puts "How old are you?"
	# age = gets.chomp.to_i 
	age = 38

	puts "What year were you born?"
	# year_born = gets.chomp.to_i
	year_born = 1977

	got_age_right = does_age_match(year_born, age)

	puts "Would you like some garlic bread from our cafeteria? y or n"
	# likes_garlic = gets.chomp
	likes_garlic = "n"
	likes_garlic = convert_to_boolean(likes_garlic) # convert yes/no to boolean

	puts "Would you like to be put on our health insurance policy? y or n"
	# needs_insurance = gets.chomp
	needs_insurance = "n"
	needs_insurance = convert_to_boolean(needs_insurance) # convert yes/no to boolean

	# puts "------------------------------------------------------------------------------"
	# puts "Object types:"
	# puts "name: #{name}, object type: #{name.class}"
	# puts "age: #{age}, object type: #{age.class}"
	# puts "year_born: #{year_born}, object type: #{year_born.class}"
	# puts "likes_garlic: #{likes_garlic}, object type: #{likes_garlic.class}"
	# puts "needs_insurance: #{needs_insurance}, object type: #{needs_insurance.class}"

	puts "------------------------------------------------------------------------------"

	puts "Name: #{name}"
	puts "Age: #{age}"
	puts "Year born: #{year_born}"
	puts "Got age right? #{got_age_right}"
	puts "Likes garlic? #{likes_garlic}"
	puts "Needs insurance? #{needs_insurance}"

	if name == "Drake Cula" || name == "Tu Fang"
		puts "*** Definitely a vampire ***"

	elsif !got_age_right && !likes_garlic && !needs_insurance
		puts "Almost certainly a vampire."

	elsif (got_age_right) && (likes_garlic || needs_insurance) 
		puts "Probably not a vampire."

	elsif !got_age_right && ( !likes_garlic || !needs_insurance)
		puts "Probably a vampire."
		
	else 
		puts
		puts "Results inconclusive."
	end

end # end of ask_vampire method

# This method converts a yes/no statement into boolean true/false
def convert_to_boolean(input)
	if input == "y" || input == "Y" || input == "yes" || input == "Yes" ||input == "YES"
		return true
	else
		return false
	end
end

# This method checks to see if age and birth year match
def does_age_match(birth_year, age)
	current_year = 2016
	years_since_birth = current_year - birth_year
	# if birthday hasn't occurred yet, (years_since_birth - age) == 1, otherwise it will == 0.
	if years_since_birth - age == 1 || years_since_birth - age == 0
		return true
	else
		return false
	end

end

ask_vampire







