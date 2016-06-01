
=begin
1. Construct an array of breweries in California
2. Add a hash to each item in the brewery array.
3. Create hash key for name, city, and beers served.
4. Add values to name and city keys.
5. Create array value for beers key and populate the array with different beers.
=end

def cal_brews

	# This is an array of hashes.
	# The hashes are the names of breweries
	# The hash keys are 'city' and 'beers'
	# The 'beers' key is an array of beers that the brewery sells
	
	california_breweries = [
		brewery0 = {
			'name' => '21st Ammendment',
			'city' => 'San Francisco',
			'beers' => [
				'Down To Earth', 
				'Brew Free! or Die', 
				'Back in Black'
			]
		},
		brewery1 = {
			'name' => 'Stumptown',
			'city' => 'Guerneville',
			'beers' => [
				'Rat Bastard', 
				'Bushwacker', 
				'Donkey Punch'
			]
		},
		brewery2 = {
			'name' => 'Drakes',
			'city' => 'San Leandro',
			'beers' => [
				'1500', 
				'Hefe', 
				'Denoginizer'
			]
		},
		brewery3 = {
			'name' => 'Faction',
			'city' => 'Alameda',
			'beers' => [
				'Southern Aroma', 
				'Faction Pale', 
				'Faction Imperial Stout'
			]
		},
		brewery4 = {
			'name' => 'Third St. Aleworks',
			'city' => 'Santa Rosa',
			'beers' => [
				'Annadel Pale', 
				'Puddle Jumper', 
				'Bombay Rouge'
			]
		},
		brewery5 = {
			'name' => 'Sierra Nevada',
			'city' => 'Chico',
			'beers' => [
				'Pale Ale', 
				'Hop Hunter', 
				'Torpedo'
			]
		},
		brewery6 = {
			'name' => 'Russian River',
			'city' => 'Santa Rosa',
			'beers' => [
				'Redemption', 
				'Happy Hops', 
				'Russian River Porter'
			]
		},
		brewery7 = {
			'name' => 'Hopmonk',
			'city' => 'Sebastopol',
			'beers' => [
				'Tavern Ale', 
				'Kellerbier', 
				'IPA'
			]
		}, 
		brewery8 = {
			'name' => 'Highway 1',
			'city' => 'Pescadero',
			'beers' => [
				'AmberDexterous', 
				'Pepper in the Rye'
			]
		},
		brewery9 = {
			'name' => 'Bear Republic',
			'city' => 'Healdsburg',
			'beers' => [
				'Racer 5', 
				'Racer X', 
				'Red Rocket'
			]
		},
		brewery10 = {
			'name' => 'Lagunitas',
			'city' => 'Petaluma',
			'beers' => [
				'Little Sumpin', 
				'Daytime IPA', 
				'Hairy Eyeball'
			]
		}
	]

	puts "The name of brewery 5 is: #{california_breweries[5]['name']}"
	puts "The beers at brewery 5 are: #{california_breweries[5]['beers'].join(", ")}"
	puts "The beers at brewery 5 are: #{california_breweries[5]['beers']}"
	puts "The beers at brewery 8 are: #{california_breweries[8]['beers']}"

	# Change the index to get info from a different brewery
	index = 0
	puts "\nThe brewery at index #{index} is called #{california_breweries[index]['name']} and is located in #{california_breweries[index]['city']}."
	puts "They serve:" 
	california_breweries[index]['beers'].each {|i| puts "\t\t" + i}
	

	# puts "Brewery Locations:"
	# california_breweries.each {|i| puts i['name'] + ", " + i["city"]}

	puts "---------------------------------------------------------------------------------"
	puts "Beer List by Brewery:"
	california_breweries.each do |i| 
		puts "#{i['name']}:"
		i['beers'].each {|x| puts "\t#{x}"}
	end

	# puts "----------------------------------------------------------"
	# puts "Beer List by City:"
	# california_breweries.each do |i| 
	# 	puts "#{i['city']}:"
	# 	i['beers'].each {|x| puts "\t#{x}"}
	# 	puts "-----------------------------"
	# end


end # cal_brews

cal_brews






# 21st Amendment - San Francisco
# Drake's - San Leandro
# Faction - Alameda
# Third St. Aleworks - Santa Rosa
# Sierra Nevada - Chico
# Russian River - Santa Rosa
# Lost Coast - Eureka
# Mount St. Helena - Middletown
# Gordon Biersh - San Jose
# Moylans - Novato
# Hopmonk - Sebastopol
# Mendicino - Ukiah
# Napa Smith - Napa
# Anchor - San Francisco
# Speakeasy - San Francisco
# Firestone Walker - San Francisco
# Highway 1 - Pescadero
# Bear Republic - Healdsburg
# Lagunitas - Petaluma
# St. Florian - Windsor
# Stumptown - Guernville



