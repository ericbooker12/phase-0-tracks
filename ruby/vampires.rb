def ask_vampire

	puts "Enter number of employees."
	num_of_employees = gets.chomp.to_i

	puts "Number of employees to process: #{num_of_employees}"

	i = 0 	# loop iterator
	num_of_employees.times do # begin looping through employees and get answers from each one.

		puts "\nEmployee #{i + 1}:"

		puts "What is your name."
		name = gets.chomp    # push answer to array
		# name << "Eric"   		# automatically fill array for testing, comment out when finished.

		puts "How old are you?"
		age = gets.chomp.to_i 
		# age << 38.to_i

		puts "What year were you born?"
		year_born = gets.chomp.to_i
		# year_born << 1977.to_i

		# check to see if age is correct with does_age_match helper method.
		# append answer to got_age_right array.
		got_age_right = does_age_match(year_born, age) 

		puts "Would you like some garlic bread from our cafeteria? y or n"
		likes_garlic = gets.chomp
		# garlic_answer = "n"

		# convert yes/no to boolean and push it to array
		likes_garlic = convert_to_boolean(likes_garlic) 

		puts "Would you like to be put on our health insurance policy? y or n"
		# needs_insurance  = gets.chomp
		# insurance_answer = "n"

		needs_insurance = convert_to_boolean(gets.chomp)

		puts "Do you have any allergies?"

		# Check object types. Comment out when done.
		# puts "------------------------------------------------------------------------------"
		# puts "Object types:"
		# puts "num_of_employees: #{num_of_employees}, object type: #{num_of_employees.class}"
		# puts "name: #{name[i]}, object type: #{name[i].class}"
		# puts "age: #{age[i]}, object type: #{age[i].class}"
		# puts "year_born: #{year_born[i]}, object type: #{year_born[i].class}"
		# puts "likes_garlic: #{likes_garlic[i]}, object type: #{likes_garlic[i].class}"
		# puts "needs_insurance: #{needs_insurance[i]}, object type: #{needs_insurance[i].class}"

		puts "------------------------------------------------------------------------------"
		puts "Employee #{i + 1}:"
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
			puts "Results inconclusive."
		end

		puts "\n"

		i += 1

	end # end of question do loop.

end # end of ask_vampire method


# Helper methods:

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
	if years_since_birth - age <= 1 && years_since_birth - age >= 0
		return true
	else
		return false
	end

end

ask_vampire # Call ask_vampire method.







