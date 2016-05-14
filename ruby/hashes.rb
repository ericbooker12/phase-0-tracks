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

puts "Enter client name:"
:client = gets.chomp

puts "Enter age of client:"
:age = gets.chomp.to_i

puts "Enter number of children"
:num_of_children = gets.chomp.to_i

puts "Enter decor theme"
:decor_theme = gets.chomp


