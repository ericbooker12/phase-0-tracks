def ask_vampire
	puts "What is your name."
	# vampire_name = gets.chomp
	vampire_name = "Eric"

	puts "How old are you?"
	# vampire_age = gets.chomp.to_i 
	vampire_age = 38 

	puts "What year were you born?"
	# year_born = gets.chomp.to_i
	year_born = 1977

	puts "Would you like some garlic bread from our cafeteria? y or n"
	# likes_garlic = gets.chomp
	likes_garlic = "n"
	likes_garlic = convert_to_boolean(likes_garlic)

	puts "Would you like to be put on our health insurance policy? y or n"
	# needs_insurance = gets.chomp
	needs_insurance = "y"
	needs_insurance = convert_to_boolean(needs_insurance)

	puts "------------------------------------------------------------------------------"
	puts "Object types:"
	puts "vampire_name: #{vampire_name}, object type: #{vampire_name.class}"
	puts "vampire_age: #{vampire_age}, object type: #{vampire_age.class}"
	puts "year_born: #{year_born}, object type: #{year_born.class}"
	puts "likes_garlic: #{likes_garlic}, object type: #{likes_garlic.class}"
	puts "needs_insurance: #{needs_insurance}, object type: #{needs_insurance.class}"

	puts "------------------------------------------------------------------------------"



end # end of ask_vampire method

# This method converts a yes/no statement into boolean true/false
def convert_to_boolean(input)
	if input == "y" || input == "Y" || input == "yes" || input == "Yes" ||input == "YES"
		return true
	else
		return false
	end
end

ask_vampire
