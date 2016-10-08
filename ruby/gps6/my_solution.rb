# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Require is just the built in method. Using relative connects the file.
# It connects the other rb file to work in this file
require_relative 'state_data'

class VirusPredictor
 # Initializes the object with instance variables
  def initialize(state_of_origin, pop_density, population)
    @state = state_of_origin
    @population = population
    @pop_density = pop_density
  end
# calculates the predicted death in each state
# also calculates speed of the spread in each state
  def virus_effects
    predicted_deaths(@pop_density, @population, @state)
    speed_of_spread(@pop_density, @state)
  end

  private
 # predicts the amount of deaths in each state
  def predicted_deaths(pop_density, population, state)
    # predicted deaths is solely based on population density
    if @pop_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @pop_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @pop_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @pop_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# predicts the speed of spread in each state
  def speed_of_spread(pop_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @pop_density >= 200
      speed += 0.5
    elsif @pop_density >= 150
      speed += 1
    elsif @pop_density >= 100
      speed += 1.5
    elsif @pop_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, status|
  state_status = VirusPredictor.new(state ,status[:pop_density], status[:population])
  state_status.virus_effects
end



# STATE_DATA["Alabama"][:pop_density][]
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:pop_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:pop_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:pop_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:pop_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects




#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# - The nested hash has a string for keys and its value has symbols with quotes

# What does require_relative do? How is it different from require?
# - require is a built in method for ruby and using it with relative lets the file you are in have access to that file

# What are some ways to iterate through a hash?
# - using .each do |key, value| is my favorite way to do it
# - or you could use a .each_pair method

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#-  i noticed that the population density variable should be named differently to avoid DRY

# What concept did you most solidify in this challenge?
# - having a better perception of where to look if there is an error and isolate the problem to its current location
# - also getting clarity in how to properly access different parts of the hash depending on weather or not
# - it was a string, float, symbol or whatever