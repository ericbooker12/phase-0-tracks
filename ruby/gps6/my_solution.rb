# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
# gives program access to state_data file. 
require_relative 'state_data'

class VirusPredictor
  
  # initialiozes the instance variables with arguments from the class instanciations
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls the 2 reamining methods
  def virus_effects
    predicted_deaths
    speed_of_spread
    print_data
  end

  private
  
  # takes arguments returns a string that shows the state name and number of deaths
  # refactored to return number_of_deaths
  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    
    case @population_density
      
      when 0..49
        number_of_deaths = (@population * 0.05).floor
      when 50..99
        number_of_deaths = (@population * 0.1).floor
      when 100..149
        number_of_deaths = (@population * 0.2).floor
      when 150..199
        number_of_deaths = (@population * 0.3).floor
      else
        number_of_deaths = (@population * 0.4).floor
    end
  end

  # returns nil, but prints string to screen as side effect
  # determines how fast the spread will happen by camparing population_density to set of ranges
  # refactored if else statement to case structure
  def speed_of_spread   #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    num_of_months = 0.0

    case @population_density
     when 0..49
        num_of_months += 2.5
      when 50..99
        num_of_months += 2
      when 100..149
        num_of_months += 1.5
      when 150..199
        num_of_months += 1.0
      else
        num_of_months += 0.5
    end

  end

  def print_data

    print "#{@state} will lose #{predicted_deaths} people in this outbreak"
    puts " and will spread across the state in #{speed_of_spread} months.\n\n"

  end


end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

count = 1
STATE_DATA.each do |state, data|
  print "#{count}. "
  state_name = VirusPredictor.new(state, data[:population_density], data[:population])
  state_name.virus_effects
  count += 1
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects


# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




#=======================================================================
# Reflection Section