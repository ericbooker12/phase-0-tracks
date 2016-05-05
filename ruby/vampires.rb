def ask_vampire
	puts "What is your name."
	vampire_name = gets.chomp

	puts "How old are you?"
	vampire_age = gets.chomp.to_f 

	puts "What year were you born?"
	year_born = gets.chomp.to_i

	puts "Would you like some garlic bread from our cafeteria? y or n"
	likes_garlic = gets.chomp
	# likes_garlic = convert_to_boolean(likes_garlic)

	puts "Would you like to be put on our health insurance policy? y or n"
	needs_insurance = gets.chomp

	# This method converts a yes/no statement into boolean true/false
	def convert_to_boolean(input)
		if input == "y" || input == "Y" || input == "yes" || input == "Yes" ||input == "YES"
			return true
		else
			return false
		end
	end

	puts "------------------------------------------------------------------------------"
	puts "vampire_name: #{vampire_name.class}"
	puts "vampire_age: #{vampire_age.class}"
	puts "year_born: #{year_born.class}"
	puts "likes_garlic: #{likes_garlic.class}"
	puts "needs_insurance: #{needs_insurance.class}"

end

ask_vampire

