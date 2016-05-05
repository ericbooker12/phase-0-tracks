def ask_vampire
	puts "What is your name."
	vampire_name = gets.chomp

	puts "How old are you?"
	vampire_age = gets.chomp.to_f 

	puts "What year were you born?"
	year_born = gets.chomp.to_i

	puts "Would you like some garlic bread from our cafeteria? y or n"
	likes_garlic = gets.chomp

	puts "Would you like to be put on our health insurance policy? y or n"
	needs_insurance = gets.chomp

end