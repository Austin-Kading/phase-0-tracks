  class Spaceship
    # adding getter and setter methods to get access and change name
    # outside the class definition. And reader to be accessed and not changed
    attr_accessor :name 
    attr_reader :max_speed, :current_location

    # Initializing Spaceship instance with name and max speed in mph
    def initialize(name, max_speed)
      @name = name
      @max_speed = max_speed
      @current_location = []
    end

    def enable_shield
      action = "*Activated*"
  end

  def disable_shield
    action = "*Disabled*"
  end

  def warp_to(location)
    puts "Traveling at #{@max_speed} to #{location}!"
    @current_location << location
    p @current_location
  end
end


  p spaceship1 = Spaceship.new("USS Enterprise", 200000)
  p spaceship2 = Spaceship.new("HMS Andromeda", 108277)
  # Set location for 1 and 2 space ship
  spaceship1.warp_to("Venus")
  spaceship2.warp_to("Mars")
  # Change in driver code to demonstrate change in accessing
  # p spaceship1.name = ("UssAustin")
  # Updated driver code to make sure shield activation works
  # p spaceship1.enable_shield
  # p spaceship2.enable_shield
  # p spaceship1.disable_shield
  # p spaceship2.disable_shield

