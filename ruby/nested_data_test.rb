
def test
	house = {
		'Living Room' => [
			'sofa', 
			'chandelier'] ,
		'Kitchen' => [
			'table', 
			'refrigerator'
			],
		'Bedroom 1' => [
			'bed', 
			'table'
			],
		'Bedroom 2' => [
			'bed', 
			'table', 
			'lamp'
			],
		'Bathroom' => [
			'sink', 
			'tub'
			],
		'Attic' => [
			'furniture', 
			'junk'
		]
	}

	puts house['Kitchen']
	puts house['Bedroom 2'][1].length
	puts house['Bedroom 2'].last
	house['Attic'].push('Ghost')
	puts house['Attic']
	house['Living Room'].push('Cat')
	puts house['Living Room']
	house['Living Room'][2] = 'dog'

	puts house['Living Room']



	# Array.new(10) { |i|  }
	moods = ['nervous', 'excited', 'triumphant']

	# Hash
	difficulty = {
		'HTML' => 'easy', 
		'CSS' => 'intermediate', 
		'Ruby' => 'advanced'
	}

end

test