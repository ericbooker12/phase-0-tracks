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

def create_alias(name)
	p "Original name: #{name}"

	name_array = name.split(" ")
	swapped_name = name_array[1] + " " + name_array[0]
	name = swapped_name # name is now the second iteration of name, first and last are swapped
	
	p "After name swap: #{name}"

	# vowel key:      
	# a e i o u A E I O U               
	# 0 1 2 3 4 5 6 7 8 9

	vowel_list = "aeiouAEIOU"

	index = 0
	# parse through each letter in name_array
	name.split('').each  do |letter_in_name| # name string is converted to an array
		# Check to see if it is in vowel_list
		if vowel_list.include?(letter_in_name) 

			# if letter is in vowel_list then set it to the next letter in the list.
			vowel_letter = name[index]

			# get the index of the letter in vowel_list and store it in vowel_index
			vowel_index = vowel_list.index(vowel_letter)

			# increment vowel_letter to the next letter in vowel_list and store it in letter_next
			# handle edge cases first
			if vowel_index == 4            	# if the letter is index of 'u' or index 4
				next_letter_index = 0		# then set next_letter to index of'a' or index 0
			
			elsif vowel_index == 9			# if the letter is index of 'U'
				next_letter_index = 5		# then set next_letter to index of 'A'

			# handle the rest of the cases
			else
				next_letter_index = vowel_index + 1
			end
			
			next_letter = vowel_list[next_letter_index]

			# replace vowels in name with next_letter
			name[index] = next_letter
		end
		index += 1
	end
	
	p "With vowels replaced: #{name}"
	
	# consonant key: 
	# b c d f g h j k l m n  p  q  r  s  t  v  w  x  y  z 
    # 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20

	# B  C  D  F  G  H  J  K  L  M  N  P  Q  R  S  T  V  W  X  Y  Z
	# 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41

	consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"

	index = 0 # set index to 0 so that we have the index of the letter in each iteration
	name.split('').each do |letter| # name string is converted to array

		if consonants.include?(letter)
			cons_index = consonants.index(name[index])

			# handle edge cases
			if cons_index == 20
				next_letter_index = 0
			elsif cons_index == 41
				next_letter_index = 21

			# handle the rest of the cases
			else
				letter_index = consonants.index(letter)
				next_letter_index = letter_index + 1 
			end
			# next_letter = vowel_list[next_letter_index]
			name[index] = consonants[next_letter_index]
		end
		index += 1
	end

	p "With consonants replaced: #{name}"
   	return name
end


p create_alias("Eryn Supple")





