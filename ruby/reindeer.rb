class Reindeer
  # attr_reader :location
  # attr_accessor :name

  def initialize(name)
    @name = name
    @location = "the North Pole"
  end

  def take_off(altitude)
    puts "#{@name} took off."
    puts "#{@name} ascended to #{altitude} feet."
  end

  def land(location)
    puts "#{@name} landed safely in #{location}."
    @location = location
  end

  # Getter methods for attributes
  # Makes attributes readable from outside the class
  def name
    @name
  end

  def location
    @location
  end

  # Setter methods
  # Allows attributes to be changed from outside the class
  def name=(new_name)
    @name = new_name
  end

end

reindeer = Reindeer.new("Dasher")
puts "#{reindeer.name} is in #{reindeer.location}."
reindeer.take_off(3000)
reindeer.land("Cape Town")
reindeer.name = "The Reindeer Formerly Known as Dasher"
puts "#{reindeer.name} is in #{reindeer.location}."
