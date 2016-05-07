def ask_vampire

	puts "Enter number of employees."
	num_of_employees = gets.chomp.to_i

	puts "Number of employees to process: #{num_of_employees}"

	# Create array variables for each question
	name = []
	age = []
	year_born = []
	got_age_right = []
	likes_garlic = []
	needs_insurance = []

	i = 0 	# loop iterator
	num_of_employees.times do # begin looping through employees and get answers from each one.

		puts "\nEmployee #{i + 1}:"

		puts "What is your name."
		name << gets.chomp    # push answer to array
		# name << "Eric"   		# automatically fill array for testing, comment out when finished.

		puts "How old are you?"
		age << gets.chomp.to_i 
		# age << 38.to_i

		puts "What year were you born?"
		year_born << gets.chomp.to_i
		# year_born << 1977.to_i

		got_age_right << does_age_match(year_born.last, age.last)

		puts "Would you like some garlic bread from our cafeteria? y or n"
		garlic_answer = gets.chomp
		# garlic_answer = "n"

		# convert yes/no to boolean and push it to array
		likes_garlic << convert_to_boolean(garlic_answer) 

		puts "Would you like to be put on our health insurance policy? y or n"
		insurance_answer = gets.chomp
		# insurance_answer = "n"

		# convert yes/no to boolean and push it to array
		needs_insurance << convert_to_boolean(insurance_answer) 

		# Check object types. Comment out when done.
		# puts "------------------------------------------------------------------------------"
		# puts "Object types:"
		# puts "num_of_employees: #{num_of_employees}, object type: #{num_of_employees.class}"
		# puts "name: #{name[i]}, object type: #{name[i].class}"
		# puts "age: #{age[i]}, object type: #{age[i].class}"
		# puts "year_born: #{year_born[i]}, object type: #{year_born[i].class}"
		# puts "likes_garlic: #{likes_garlic[i]}, object type: #{likes_garlic[i].class}"
		# puts "needs_insurance: #{needs_insurance[i]}, object type: #{needs_insurance[i].class}"

		i += 1

	end # end of question do loop.

	i = 0	# reset iterator to 0

	num_of_employees.times do # loop through employees again and print answers.

		puts "------------------------------------------------------------------------------"
		puts "Employee #{i + 1}:"
		puts "Name: #{name[i]}"
		puts "Age: #{age[i]}"
		puts "Year born: #{year_born[i]}"
		puts "Got age right? #{got_age_right[i]}"
		puts "Likes garlic? #{likes_garlic[i]}"
		puts "Needs insurance? #{needs_insurance[i]}"


		if name[i] == "Drake Cula" || name[i] == "Tu Fang"
			puts "*** Definitely a vampire ***"

		elsif !got_age_right[i] && !likes_garlic[i] && !needs_insurance[i]
			puts "Almost certainly a vampire."

		elsif (got_age_right[i]) && (likes_garlic[i] || needs_insurance[i]) 
			puts "Probably not a vampire."

		elsif !got_age_right[i] && ( !likes_garlic[i] || !needs_insurance[i])
			puts "Probably a vampire."
			
		else 
			puts "Results inconclusive."
		end

		puts "\n"

		i += 1 

	end		# end of 2nd loop.

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
	if years_since_birth - age == 1 || years_since_birth - age == 0
		return true
	else
		return false
	end

end

ask_vampire







