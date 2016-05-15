
=begin
Construct a state (Calfornia)
1. Create a hash called california_breweries.
2. Add names of breweries to hash as keys.
3. Populate the keys with names of beers sold by the breweries.
	- names of beers will be in arrays.
4. Add a key with the name of the city of the brewery.
=end

def cal_brews

	# This is an array of hashes.
	# The hashes are the names of breweries
	# The hash keys are 'city' and 'beers'
	# The 'beers' key is an array of beers that the brewery sells
	
	california_breweries = [
		brewery1 = {
			'name' => '21st Ammendment',
			'city' => 'San Francisco',
			'beers' => [
				'Down To Earth', 
				'Brew Free! or Die', 
				'Back in Black'
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
				'Amberdexterous', 
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
				'Daytime', 
				'Hairy Eyeball'
			]
		},
		brewery11 = {
			'name' => 'Stumptown',
			'city' => 'Guerneville',
			'beers' => [
				'Rat Bastard', 
				'Bushwacker', 
				'Donkey Punch'
			]
		}
	]

	puts "Brewery Locations:"
	california_breweries.each {|i| puts i['name'] + ", " + i['city']}

	puts ""

	puts "Beer List by Brewery:"
	california_breweries.each do |i| 
		puts "#{i['name']}:"
		i['beers'].each {|x| puts "\t#{x}"}
		puts ""
	end


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



