# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yelling_happily(words)
# 		words + "!!!" + ", YAY!"
# 	end
# end

# puts Shout.yelling_happily("Hello")
# puts Shout.yell_angrily("Good bye")

module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end

	def yelling_happily(words)
		words + "!!!" + ", YAY!"
	end
end

class Clown
	include Shout
end

class Teacher
	include Shout
end

guy1 = Clown.new
guy2 = Teacher.new

puts guy1.yell_angrily("I am a very angry clown")
puts guy1.yelling_happily("I sleep in my car")

puts guy2.yell_angrily("Everybody shut up")
puts guy2.yelling_happily("I'ts 5 o'clock")

