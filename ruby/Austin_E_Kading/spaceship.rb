  class Spaceship
    # adding getter and setter methods to get access and change name
    # outside the class definition. And reader to be accessed and not changed
    attr_accessor :name
    attr_reader :max_speed

    # Initializing Spaceship instance with name and max speed in mph
    def initialize(name, max_speed)
      @name = name
      @max_speed = max_speed
    end

    def enable_shield
      action = "*Activated*"
  end

  def disable_shield
    action = "*Disabled*"
  end
end


  p spaceship1 = Spaceship.new("USS Enterprise", 200000)
  p spaceship2 = Spaceship.new("HMS Andromeda", 108277)
  # Change in driver code to demonstrate change in accessing
  # p spaceship1.name = ("UssAustin")
  # Updated driver code to make sure shield activation works
  p spaceship1.enable_shield
  p spaceship2.enable_shield
  p spaceship1.disable_shield
  p spaceship2.disable_shield

