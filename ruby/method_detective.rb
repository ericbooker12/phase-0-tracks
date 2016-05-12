# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
puts "iNvEsTiGaTiOn".swapcase!
# => “InVeStIgAtIoN”

puts ""
puts "zom".insert(2, 'o')

# Alternate strategy
o_word = "zom"
o_pos = o_word.index('o')
puts "zom".insert(o_pos + 1, o_word[o_pos])
# => “zoom”

puts ""
puts "\"" + "enhance".center("enhance".length + 8) + "\""  # double quotes to show spaces on both sides
# => "    enhance    "

puts ""
puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts ""
puts "the usual".concat(" suspects")
puts "the usual".<<(" suspects")
#=> "the usual suspects"

puts ""
puts " suspects".insert(0, "the usual")
puts " suspects".prepend("the usual")
# => "the usual suspects"

puts ""
puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

puts ""
puts "The mystery of the missing first letter".delete('T')

# Alternate strategies
phrase = "The mystery of the missing first letter"
puts phrase.slice(1, phrase.length - 1)
puts phrase.delete(phrase[0])
puts phrase.delete(phrase.slice(0))
puts phrase[1.. -1]

# => "he mystery of the missing first letter"

puts ""
puts "Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

puts ""
puts "z".bytes
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# 122 is the ascii code for 'z'

puts ""
puts "How many times does the letter 'a' appear in this string?".count('a')
# => 4





