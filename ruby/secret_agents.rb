# encrypt pseudocode
# 1. get first letter of word and replace it with the next letter that occurs in the alphabet.
# 2. repeat with the next letter of the word until you reach the end of the word.
# 3. return the encrypted word.


def encrypt(word)

new_word = ""
# puts "Length of word in encrypt method #{word.length}"

count = 0 # Set counter to 0

	while count < word.length

		next_letter = word[count].next

		# edge case,
		# set "z" equal to "a" and not "aa"
		if word[count] == "z"
			next_letter = "a"
		end

		# leave space character unchanged.
		if word[count] == " "
			next_letter = " "
		end

		# print out next_letter character for debugging.
		# p "next_letter = #{next_letter}"

		new_word[count] = next_letter 

		count += 1  # increment counter
	end

p new_word

end

# decrypt pseudocode
# 1. Use the encrypted word returned from the encrypt method
# 2. Take the first letter of the word and set it to the letter that precedes it in the alphabet
# 3. Repeat step to for the next letter until the end of the word.


def decrypt(word)
	# encryption key:
	# a b c d e f g h i j k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
	# 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25

	alpha = "abcdefghijklmnopqrstuvwxyz"
	new_word = ""

	# puts "Length of word in decrypt method #{word.length}"

	count = 0
	while count < word.length

		cur_letter = word[count]
		
		# Handle edge case
		if cur_letter == " "
			prev_letter = " "
		else
			# Get index of cur_letter in alphabet
			index_of_cur_letter = alpha.index(cur_letter)
			# puts "cur_letter = #{cur_letter}, at index #{index_of_cur_letter}"  # print for debugging purpose.
			
			# set the index of previous letter to the index of current letter minus 1.
			index_of_prev_letter = index_of_cur_letter - 1
			# puts "index_of_prev_letter = #{index_of_prev_letter}"

			prev_letter = alpha[index_of_prev_letter]
			# puts "prev_letter = #{prev_letter}"
		end

			new_word[count] = prev_letter
		

		count += 1
	end

	p new_word

end

# Driver code:
encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt("bcd afe")
decrypt("afe")

decrypt(encrypt("sword fish"))

encrypt(decrypt("a"))
decrypt("a")









