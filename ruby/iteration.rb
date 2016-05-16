def method_with_block
	animal1 = "Jack Rabbit"
	animal2 = "Hornless Unicorn"
	puts "This is a method with a block."
	yield(animal1, animal2)
end

method_with_block {|item1, item2| puts "It yields a block with 2 items. They are #{item1} and #{item2}"}

animal_array = ["cow", "pig", "goat", "chicken", "lamb", "turkey", "emu"]
animal_hash = {"horse" => "mammal", "trout" => "fish", "salamander" => "amphibian", "emu" => "bird", "goat" => "mammal"}

puts "\nArray#each"
puts "Original data:"
p animal_array


puts "\nArray in .each loop:"
animal_array.each do |animal| 
		p "The #{animal} was delicious."
end

puts "\nAfter .each:"
p animal_array

puts "\nArray#map!"
puts "Original data:"
p animal_array

animal_array.map! do |animal| 
		animal = "man-#{animal}"
end

puts "\nAfter .map!:"
p animal_array


puts "\nHash#each"
puts "Original data:"
p animal_hash


puts "\nhash in .each loop:"
animal_hash.each do |animal, class_of_animal| 
		p "The #{animal} is a #{class_of_animal}."
end

puts "\nAfter .each:"
p animal_hash

puts "\nHash#map"
puts "Original data:"
p animal_hash


puts "\nhash in .map loop:"
animal_hash.map do |animal, class_of_animal| 
		class_of_animal = "land animal"
		p "The #{animal} is a #{class_of_animal}."
end

puts "\nAfter .each:"
p animal_hash














