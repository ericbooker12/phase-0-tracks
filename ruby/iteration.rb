def method_with_block
	animal1 = "Jack Rabbit"
	animal2 = "Hornless Unicorn"
	puts "This is a method with a block."
	yield(animal1, animal2)
end

method_with_block {|item1, item2| puts "It yields a block with 2 items. \nThey are 1. #{item1} and 2. #{item2}"}

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

# Release 2
puts "\nRelease 2:"

my_array = ["cow", "pig", "goat", "chicken", "lamb", "turkey", "emu"]
my_hash =  {
	"horse" => "mammal", 
	"trout" => "fish", 
	"salamander" => "amphibian", 
	"emu" => "bird", 
	"goat" => "mammal"
}

puts "1."
p my_array.delete_if {|animal| animal == "goat"}

delete_if_hash = animal_hash.delete_if {|animal, type_of_animal| animal == "emu" || type_of_animal == "fish"}
p delete_if_hash

puts "\n2."
select_array =  my_array.select {|animal| animal == "lamb" || animal == "turkey"}
p select_array

select_hash = animal_hash.select {|animal, type_of_animal| animal == "goat" || type_of_animal == "amphibian"}
p select_hash

puts "\n3."
keep_if_array = my_array.keep_if {|animal| animal == "pig" }
p keep_if_array

keep_if_hash = my_hash.keep_if {|animal, type| type == "mammal" }
p keep_if_hash

puts "\n4."
my_array = ["cow", "pig", "goat", "chicken", "lamb", "turkey", "emu"] # re-populate array 
my_hash =  {  #re-populate hash
	"horse" => "mammal", 
	"trout" => "fish", 
	"salamander" => "amphibian", 
	"emu" => "bird", 
	"goat" => "mammal"
}

p my_array.drop_while {|animal| animal != "lamb" }

p my_hash.drop_while {|animal, type| type != "bird" }



















