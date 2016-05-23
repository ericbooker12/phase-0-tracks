class Santa


  @age = 0
  @@reindeer_ranking = [ "Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen" ]


  attr_accessor :name, :gender, :reindeer_ranking, :age, :ethnicity

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!"
  end

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
  end

  


  def celebrate_birthday
    @age=@age.to_i+1
  end


  def get_mad_at(reindeer_name)
    puts "Santa is mad at #{reindeer_name}"
    @@reindeer_ranking.delete(reindeer_name) # delete name from array
    @@reindeer_ranking.push(reindeer_name)  # add it back to the end, can probably comine these into one line
  end

end

test=Santa.new("male","white")

test.speak
test.eat_milk_and_cookies("Chocalate Chip")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

n=0
i=0
while n<7
  santas << Santa.new(example_genders[i], example_ethnicities[i])
n+=1
i+=1
end

test.celebrate_birthday
p test.age

p test.get_mad_at("Rudolph")

p test.gender="male"
p test.ethnicity


