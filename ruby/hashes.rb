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
	# Get data from client.
	puts "Enter client name:"
	client = gets.chomp

	puts "Enter age of client:"
	age = gets.chomp.to_i

	puts "Does the client have children? y or no"
	has_children = gets.chomp
	has_children = convert_to_bool(has_children)

	if has_children
		puts "Enter number of children"
		children = gets.chomp.to_i
	end

	puts "Enter decor theme or type \"none\"."
	decor = gets.chomp

	designer_hash = {
		client_name: client,
		client_age: age,
		client_has_children: has_children, 
		num_of_children: children,
		decor_theme: decor
	}
end


def convert_to_bool(yes_or_no)
	if yes_or_no.downcase == "y" || yes_or_no.downcase == "yes"
		return true
	else
		return false
	end
end


