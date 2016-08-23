# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# giving the class the link to use the state_data file information
# require relative is a compliment to the built in require method.

require_relative 'state_data'

class VirusPredictor
  # initializing new instance of virus predictor class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
    # method is used to call on predicted deaths and speed of spread methods



  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    #speed_of_spread(@population_density, @state)
  end

  private
    # Method that predicts the population density
    # predicts the number of deaths based on formula
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    speed = 0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
      speed += 0.5
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

    puts " and will spread across the state in #{speed} months.\n\n"

  end
    # Speed is calculated by the density in the state
=begin
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
=end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
#jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
#california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
#alaska.virus_effects

### DRY Report for 50 States ###
STATE_DATA.each do |states, state_data|
  states = VirusPredictor.new(states, STATE_DATA[states][:population_density], STATE_DATA[states][:population])
  states.virus_effects
end


# Reflect

# What are the differences between the two different hash syntaxes shown in the state_data file?
  # The first hash (State_data) is a class hash with multiple key hashes nested
  # inside of it holding data for each instance
  # this way we can call on that class hash with alot of information

# What does require_relative do? How is it different from require?
  # require_relative is a more specific way of leading you to what your looking for
  # it's more like saying go down this hallway, take a left and look in this drawer to find what your looking for
  # and require would be more like go down the hallway, take a left and go into
  # that room and it's in one of those 3 drawers

# What are some ways to iterate through a hash?
  #hash.each do |key, hash|
  #   puts "#{key}-----"
  #   puts hash
  # end
  # this is one way it iterate through a hash
  #frequencies.each { |key, value| puts "#{key} #{value}" } 
  #that would also be another way of doing it

# When refactoring virus_effects, what stood out to you about the variables, if anything?
  # What stood out to me when refactoring those two was that both
  # methods were using the same data. Therefor we could combine them into one so we wouldn't DRY

# What concept did you most solidify in this challenge?
  # One concept that i really noticed in this challenge was making sure 
  # that we weren't using DRY. making things more short and readable
  # to be able to be organized and readable.
  
