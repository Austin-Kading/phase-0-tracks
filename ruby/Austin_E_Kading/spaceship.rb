  class Spaceship
    # adding getter and setter methods to get access and change name
    # outside the class definition. And reader to be accessed and not changed
    attr_accessor :name 
    attr_reader :max_speed, :current_location, :inventory

    # Initializing Spaceship instance with name and max speed in mph
    def initialize(name, max_speed)
      @name = name
      @max_speed = max_speed
      @current_location = []
      @inventory = []
    end

    def enable_shield
      action = "*Activated*"
  end

  def disable_shield
    action = "*Disabled*"
  end

  def warp_to(location)
    puts "Traveling at #{@max_speed} to #{location}!"
    # Updated location and made it accessible to use in other methods
    @current_location << location
    # p @current_location
  end

# I am confused on how to access my enable/disable shield methods 
# inside of this method
  def tractor_beam(item)
    item = item
    location = @current_location
    if item == item
      @name.disable_shield
      @inventory << item
      @current_location << location
    if item.ord <= 500
      return true
      print @name.enable_shield
    else
     print false
      end
    end
  end

  def pickup(item_descript, location)
    
  end
end


  p spaceship1 = Spaceship.new("USS Enterprise", 200000)
  p spaceship2 = Spaceship.new("HMS Andromeda", 108277)
  # Set location for 1 and 2 space ship
  spaceship1.warp_to("Venus")
  spaceship2.warp_to("Mars")
  spaceship1.tractor_beam("cat")
  # Change in driver code to demonstrate change in accessing
  # p spaceship1.name = ("UssAustin")
  # Updated driver code to make sure shield activation works
  # p spaceship1.enable_shield
  # p spaceship2.enable_shield
  # p spaceship1.disable_shield
  # p spaceship2.disable_shield
  

