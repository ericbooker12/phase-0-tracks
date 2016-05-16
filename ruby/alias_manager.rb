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
	
end

def get_next_vowel
	# vowel key:      
	# a e i o u A E I O U               
	# 0 1 2 3 4 5 6 7 8 9

	vowel_list = "aeiouAEIOU"
<<<<<<< HEAD
	vowel_list_array = vowel_list.split('')
	p vowel_list_array
	name = "Eric Booker uuuuUUUU"
	name_array = name.split('')
=======
	name = "Eric Booker uuuuUUUU"
	name_array = name.split("")
>>>>>>> bb2867ec7d6eefe693ee5d52723dd5c8931cf3d6
	puts name

	index = 0
	# parse through each letter in name_array
<<<<<<< HEAD
	name_array.each  do |letter_in_name|
		# Check to see if it is in vowel_list
		if vowel_list_array.include?(letter_in_name) 

			# if letter is in vowel_list then store it in vowel_letter.
=======
	name_array.each  do |letter|
		# Check to see if it is in vowel_list
		if vowel_list.include?(letter) 

			# if letter is in vowel_list then set it to the next letter in the list.
>>>>>>> bb2867ec7d6eefe693ee5d52723dd5c8931cf3d6
			vowel_letter = name_array[index]

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
<<<<<<< HEAD
			
=======
>>>>>>> bb2867ec7d6eefe693ee5d52723dd5c8931cf3d6

		end
		index += 1
	end
	puts name
end

def get_next_consonant
	# consonant key: 
	# b c d f g h j k l m n  p  q  r  s  t  v  w  x  y  z 
    # 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20

	# B  C  D  F  G  H  J  K  L  M  N  P  Q  R  S  T  V  W  X  Y  Z
	# 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41
end

get_next_vowel