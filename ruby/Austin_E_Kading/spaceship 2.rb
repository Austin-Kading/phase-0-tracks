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
     puts "*Disabled*"
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
      # Im trying to use the disable and enable method in here but i cant get
      # it to work inside of this method
      puts "#{@name.disable_shield}"
      @inventory << item
      @current_location << location
    if item.ord <= 500
      return true
      print "#{@name.enable_shield}"
    else
     print false
      end
    end
  end
    
# Dont think this is how you wanted it but i cant get the last method to work
    def pickup(item_descript, location)
    puts "The ship is now warping to #{location} and using tractor beam to pick up a #{item_descript}"
    @inventory << item_descript
      end

    # I think this is right but its not showing up 
    def print_inventory
       ship_str = ""
    @inventory.each do |items|
      ship_str << items.to_s.upcase
      ship_str << "\n\n"
      items.each do |item|
        ship_str << item.to_s
        ship_str << "\n"
        end
      ship_str << "\n"
      end
    ship_str
    end

    # Unfortunately i cant see this case i couldnt get my other method working
    # but i think this would work
    def cargo_weight
      total_weight = 0
    @inventory.each do |items|
      total_weight += item.org
    end
    total_weight
  end
end


  p spaceship1 = Spaceship.new("USS Enterprise", 200000)
  p spaceship2 = Spaceship.new("HMS Andromeda", 108277)
  # Set location for 1 and 2 space ship
  spaceship1.warp_to("Venus")
  spaceship2.warp_to("Mars")
  # spaceship1.tractor_beam("cat")
  spaceship1.pickup("moon","moon rock")
  spaceship2.pickup("mars", "martian")
  spaceship1.pickup("saturn", "space ball")
  spaceship1.print_inventory
  # Change in driver code to demonstrate change in accessing
  # p spaceship1.name = ("UssAustin")
  # Updated driver code to make sure shield activation works
  # p spaceship1.enable_shield
  # p spaceship2.enable_shield
  # p spaceship1.disable_shield
  # p spaceship2.disable_shield
  

