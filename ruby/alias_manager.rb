=begin
Pseudocode for alias_manager
1. Swap first and last name.
2. Change each vowel for the next vowel
	- create variable that holds vowels 'aeiou'
	- figure out how to find only vowels in a string.
3. Change each consonant for the next consonant in the alphabet.
	- create variable that holds the alphabet minus vowels.
	- figure out how to find only consonants in a string.
=end

def swap_name(name)
	name_array = name.split(" ")
	swapped_name = name_array[1] + " " + name_array[0]
	puts "Original name: #{name}"
	puts "Swapped name #{swapped_name}"
end


swap_name("Eric Booker")