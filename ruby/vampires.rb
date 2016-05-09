def ask_vampire

	puts "Enter number of employees."
	num_of_employees = gets.chomp.to_i

	puts "Number of employees to process: #{num_of_employees}"

	i = 0 	# loop iterator
	num_of_employees.times do # begin looping through employees and get answers from each one.

		puts "\nEmployee #{i + 1}:"

		puts "What is your name."
		name = gets.chomp  
		# name = "Eric Booker"   # This line is used for testing purposes

		puts "How old are you?"
		age = gets.chomp.to_i 
		# age = 18.to_i			# for testing

		puts "What year were you born?"
		year_born = gets.chomp.to_i
		# year_born = 1977.to_i		# for testing

		# check to see if age is correct with does_age_match helper method.
		got_age_right = does_age_match(year_born, age) 

		puts "Would you like some garlic bread from our cafeteria? y or n"
		# capture yes/no answer in likes_garlic, convert it to boolean.
		likes_garlic = convert_to_boolean(gets.chomp) 
		# likes_garlic = true		# for testing

		puts "Would you like to be put on our health inurance policy? y or n"
		needs_insurance = convert_to_boolean(gets.chomp)
		# needs_insurance = true		# for testing

		puts "Do you have any allergies? y or n"
		has_allergies = convert_to_boolean(gets.chomp)

		allergies = [] # Create allergies array to store allerigies in next question.

		# create flag and initialize to false. 
		# set flag to true if employee is allergic to sunshine.
		red_flag = false 

		if has_allergies	
			puts "List allergies one at a time. Type \"done\" when finished."

			loop do
				allergy = gets.chomp

				if allergy != "done"
					allergies.push(allergy)  # push user input to allergies array.
					if allergy == "sunshine"
						red_flag = true  # set flag to true if allergic to sunshine and break out of loop
						break
					end
				else
					break # break out of loop if user types "done"
				end
				
			end
			has_allergies = false # set has allergies to false so loop doesn't start again.
		end
			
		
		
		# Check object types. Comment out when done.
		# puts "------------------------------------------------------------------------------"
		# puts "Object types:"
		# puts "num_of_employees: #{num_of_employees}, object type: #{num_of_employees.class}"
		# puts "name: #{name}, object type: #{name.class}"
		# puts "age: #{age}, object type: #{age.class}"
		# puts "year_born: #{year_born}, object type: #{year_born.class}"
		# puts "likes_garlic: #{likes_garlic}, object type: #{likes_garlic.class}"
		# puts "needs_insurance: #{needs_insurance}, object type: #{needs_insurance.class}"


		# Print data
		puts "------------------------------------------------------------------------------"
		puts "Employee #{i + 1}:"
		puts "Name: #{name}"
		puts "Age: #{age}"
		puts "Year born: #{year_born}"
		puts "Got age right? #{got_age_right}"
		puts "Likes garlic? #{likes_garlic}"
		puts "Needs insurance? #{needs_insurance}"

		if allergies[0] == nil 
			puts "No allergies"
		else

			count = 0
			puts "Allergies: "
			while count < allergies.size

				p allergies[count]
				count += 1
			end

		end

		if name == "Drake Cula" || name == "Tu Fang"
			puts "*** Definitely a vampire ***"

		elsif !got_age_right && !likes_garlic && !needs_insurance
			puts "Almost certainly a vampire."

		elsif (got_age_right) && (likes_garlic || needs_insurance)
			puts "Probably not a vampire."

		elsif (!got_age_right && ( !likes_garlic || !needs_insurance)) || red_flag
			puts "Probably a vampire."
			
		else 
			puts "Results inconclusive."
		end

		puts "\n"

		i += 1

	end # end of question do loop.

	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

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







