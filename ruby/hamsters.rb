def get_hamster_info
	puts "What is the hamster's name?"
	name = gets.chomp

	puts "What is #{name}'s volume level?"
	volume_level = gets.chomp

	puts "What is the color of #{name}'s fur?"
	fur_color = gets.chomp

	puts "Should #{name} be Adopted? yes or no"
	adoptable = gets.chomp

	#convert string yes/no to boolean true/false
	adoptable == "yes" ? adoptable = true : adoptable = false

	puts "What is #{name}'s estimated age?"
	age = gets.chomp

	if age ==  ""
		age = nil
	endgti 

	age = age.to_f

	puts "--------------------------------------------------"
	puts "Hamster Info"
	puts "Name: #{name}"
	puts "Fur color: #{fur_color}"
	puts "Adoptable? #{adoptable}"

	# Age of hamster if known.
	if age == nil
		puts name + "'s age is unknown."
	else
		puts "#{name} is approximately #{age} years old."
	end

	puts "--------------------------------------------------"
	puts "Classes:"
	puts "name: #{name.class}"
	puts "age: #{age.class}"
	puts "fur_color: #{fur_color.class}"
	puts "adoptable: #{adoptable.class}"
	
end

get_hamster_info
