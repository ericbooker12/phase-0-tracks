# bicycle class

# attributes:
# type
# color
# wheel size

# methods:
# go
# stop
# pedal faster
# change gears
# 	arg: gear(1- 10)
# inflate tires
# 	arg: air pressure

class Bicycle
	attr_reader :bike_color, :type
	attr_accessor :bike_color, :wheel_size, :gear, :psi

	def initialize(type)
		@type = type
		@gear = 5
		puts "*****You initialized a new #{type} bike...*****"
	end

	def bike_color 
		@bike_color
	end

	def wheel_size
		@wheel_size		
	end

	def make_bike_go
		puts "\n*****Start pedaling.*****\n"
	end

	def change_gears(gear)
		@gear = gear.to_i
		puts "\n*****You are in gear #{@gear}.*****\n"
	end

	def make_bike_stop
		if @type == "mountain"
			puts "\n*****Hit the brakes! But not too hard, you don't want to tear up the trails!*****\n"
		elsif @type == "road"
			puts "\n*****There's a Starbucks, hit the brakes.*****\n"
		end
			
	end

	def go_faster
		if @gear < 10
			if @type == "mountain"
				puts "\n*****Shift to gear #{@gear.to_i + 1}, watch for hikers and pedal hard!*****\n"
			elsif @type == "road"
				puts "\n*****Shift to gear #{@gear.to_i + 1}, watch for cars and pedal hard!*****\n"
			end
		else
			puts "\n*****You are in the highest gear. Just pedal!*****\n"
		end
	end

	def inflate_tires(psi)
		@psi = psi
		if psi < 50
			puts "\n*****Your tires have been inflated to #{@psi} psi.*****\n"
		else
			puts "\n*****You added too much air and your tires just exploded.*****\n"
		end
	end

	def about
		puts "------------------------"
		puts "Your new bike:"
		puts "Type: #{@type}"
		puts "Color: #{bike_color}"
		puts "Wheel size: #{wheel_size}"
		puts "Color: #{bike_color}"
		if @psi.to_i < 50 
			puts "psi: #{psi}"
		else 
			puts "psi: way too much!"
		end
		puts "------------------------\n"
	end

end # End of Bicycle class

# Method to parse through and choose from a hash
def get_value(hash)
	hash_length = hash.length
	puts "Pick a number from 1 to #{hash.length}"
	
	hash.each do |index, value|
		puts "#{index}. #{value}"
	end

	value_index = gets.chomp
	if value_index == 'q'
		return value_index
	else
		value_index = value_index.to_i
		value = hash[value_index]
	end

end


puts "How many bikes do you want?"
bike_num = gets.chomp.to_i

bike_types = {1 => "mountain", 2 => "road"}
colors = {1 => "white",2 =>"green",3 => "red",4 => "blue", 5 => "black"}
wheel_sizes = {1 => "29\"" ,2 =>"26\"" ,3 => "700c"}
bike_type_array = []



# create bike names
def create_bike_names(bike_num)
	bikes = []
	count = 0
	while count < bike_num
		bikes << "bike#{count + 1}"
		count += 1
	end

	return bikes

end

bikes = create_bike_names(bike_num)
print bikes

count = 0
while count < bike_num 
	
	# Choose a bike type
	puts "Choose a bike type (select a number):"
	bike_type = get_value(bike_types)
	puts "You chose a #{bike_type} bike.\n"
	bike_type_array << bike_type
	if bike_type == 'q'
		break
	end
	
	count += 1
end

puts ""

# create instances
count = 0
while count < bike_type_array.length
	bikes[count] = Bicycle.new(bike_type_array[count])
	count += 1
end

puts ""

# Fill attributes
count = 0
while count < bikes.length
	# Choose a color
	puts "Choose a color for bike #{count + 1}, a #{bikes[count].type} bike. "
	bike_color = get_value(colors)
	puts "*****You have a #{bike_color} bike.*****\n"
	bikes[count].bike_color = bike_color

	# Pick your wheel size
	puts "\nChoose the wheel size for bike #{count + 1}, a #{bikes[count].type} bike. "
	wheel_size = get_value(wheel_sizes)
	puts "*****Your bike has #{wheel_size} wheels.*****\n"
	bikes[count].wheel_size = wheel_size

	# inflate your tires
	puts "\nWhat is the desired psi for bike #{count + 1}, a #{bikes[count].type} bike? "
	psi = gets.chomp.to_i
	bikes[count].inflate_tires(psi)
	
	count += 1
end

# Display data
count = 0
while count < bikes.length
	bikes[count].about
	count += 1
end

bikes_to_ride = {}
count = 0
while count < bike_num
	bikes_to_ride[count + 1] = "bike#{count + 1}"
	count += 1
end
puts bikes_to_ride
puts "Which bike would you like to ride? You can only ride one."
puts "Choose 1 - #{bike_num}"
selection = gets.chomp.to_i - 1

puts "What would you like to do? or press."

actions = {1 => "Go",2 =>"Change gears",3 => "Go faster",4 => "Stop"}

actions.each do |index, action|
	puts "#{index}. #{action}"
end
index = gets.chomp.to_i

puts ""

while index != "q"
	if index == 1
		bikes[selection].make_bike_go
	elsif index == 2
		puts "Choose a gear from 1 to 10"
		gear = gets.chomp.to_i
		bikes[selection].change_gears(gear)
	elsif index == 3
		bikes[selection].go_faster
	elsif index == 4
		bikes[selection].make_bike_stop
	end 
	puts ""
	puts "Now what? or press 'q' to quit"
	actions.each do |index, action|
		puts "#{index}. #{action}"
	end
	index = gets.chomp
	if index == 'q'
		break
	else
		index = index.to_i
	end
end








# bike1.make_bike_go
# bike1.change_gears(4)
# bike1.go_faster
# bike1.inflate_tires(51)

# bike1.make_bike_stop





