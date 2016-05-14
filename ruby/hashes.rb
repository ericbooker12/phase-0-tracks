# Pseudocode
# 1. Get following info from interior designer: 
# 	client name, 
# 	age, 
# 	number of children, 
# 	decor theme.

# 2. Convert results to appropriate data type.
# 3. Convert keys to symbols.
# 3. Link results (values) to symbol keys.
# 4. Store key/value pair in a hash table. 


def get_client_info

	# Create borders to put around printed data.
	border = "----------------------------------"
	border_top = "\nYour data:\n#{border}" # border with leading newline character for top
	border_bottom = "#{border}\n\n" # border with 2 trailing newline characters for bottom

	# Get data from client.
	puts "Enter client name:"
	client = gets.chomp
	# client = "Eric Booker"  # for testing

	puts "Enter age of client:"
	age = gets.chomp.to_i
	# age = 38

	puts "Does the client have children? y or no"
	has_children = gets.chomp
	# has_children = "n"
	has_children = convert_to_bool(has_children)

	if has_children
		puts "Enter number of children"
		children = gets.chomp.to_i
	else
		num_of_children = nil
	end

	puts "Enter decor theme or type \"none\"."
	# decor = "Tuscan"
	decor = gets.chomp

	# Populate the hash table.
	designer_hash = {
		client_name: client,
		client_age: age,
		client_has_children: has_children, 
		num_of_children: children,
		decor_theme: decor
	}

	# Get rid of decore_theme if user types "none".
	if decor.downcase == "none"
		designer_hash.delete(:decor_theme)
	end

	if num_of_children == nil
		designer_hash.delete(:num_of_children)
	end


	# Print the hash table to screen
	puts border_top
	designer_hash.each {|key, val| puts "#{key} = #{val}"}
	puts border_bottom

	# Give user opportunity to update answers 
	puts "Would you like to update any answers? y or no"
	answer = gets.chomp.downcase
	puts ""

	# if the user would like to update answers then run this loop:
	while answer.downcase == "y" || answer == "yes"  
		puts "Enter the field you would like to change:"
		# Print each key to screen so that user knows options to change
		designer_hash.keys.each {|i| puts i.to_s}


		# Take user input, convert it to a symbol and store it in key_to_change variable
		key_to_change = gets.chomp.to_sym

		# If key to change currently exists in the hash, then get new value from user.
		if designer_hash.has_key?(key_to_change)
			puts "Enter new value:"
			new_value = gets.chomp
			# Assign new value to key.
			designer_hash[key_to_change] = new_value
		else
			# If key does not exist in hash, ask user if he/she would like to add it.
			puts "Key doesn't exist. Would you like to add it?"
			add_key = gets.chomp.downcase
			while  add_key == "y" || add_key == "yes"
				# Ask user for value of new field.
				puts "What is the value of this field"
				new_value = gets.chomp
				# Assign value to new field
				designer_hash[key_to_change] = new_value
				add_key = "no"
			end
			
		end

		# Ask user if he/she want to update any more fileds.
		#  If answer is no, then loop will exit.
		puts "Would you like to update any more answers? y or n"
		answer = gets.chomp.downcase

	end
	
	puts border_top
	designer_hash.each {|key, val| puts "#{key} = #{val}"}
	puts border_bottom
	

end #get_client_info


def convert_to_bool(yes_or_no)
	if yes_or_no.downcase == "y" || yes_or_no.downcase == "yes"
		return true
	else
		return false
	end
end

get_client_info
