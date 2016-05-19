# Puppy class
# attributes:
# fur_color
# type (dalmation, lab, etc)
# disposition (frisky, lazy, excitable)
# has spots?
# size
# eye color
# tricks

class Puppy

	def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  	end

	def speak(this_many_times)
		this_many_times.times {print "woof! "}
		print "\n"
	end

	def rolls_over
		 puts "\nrolls over"
	end

	def dog_years(human_years)
		puts "I am #{human_years * 7} in dog years."
	end

	def another_trick
		puts "play's dead"
	end
end

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new


fido.fetch("ball")
fido.speak(4)
fido.rolls_over
fido.dog_years(8)
fido.another_trick




