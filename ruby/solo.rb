  # Design robot class
  class Robot
    attr_accessor :name, :brand, :height, :age
    attr_reader :color
    # Initializing Robot class and adding attributes
    def initialize(name, brand, color, height)
        # Add at least 3 attributes (using at least two data types) whose values vary from instance to instance

      @name = name
      @brand = brand
      @color = color
      @height = height
      @age = 2
    end
    # Robot introduction method
    robot_type = ["Microsoft", "Apple", "Radioshack", "Hewlit Packard"]

     # Add 3 methods (at least 1 with argument)
    def greet
      puts "Hello friend! I am #{@name} and I am a party robot!!!"
      puts "I am a kick ass #{@brand} robot."
      puts "I am a #{@height} good looking dancing guru, so watch out ladies!!!"
    end
 
    def moon_walk(left, right)
      puts "#{@name} does the moon walk, #{left} shwish, #{right} swhish!"
    end


    def dance_invite
      puts "Would you like to dance with #{@name}(y/n)?"
      dance = gets.chomp
      
      if dance == "y"
        puts "Let's rock this joint!"
      elsif dance == "n"
        puts "#{@name} can do this on his own."
      end

      # Getter method
      def age
        p @age
      end
    end
  end

  p robot = Robot.new("Disco Rob", "Microsoft", "silver", "6ft")
  robot.greet
  robot.moon_walk("left foot", "right foot")
  p robot.dance_invite
  robot.age

  # Adding user interface to create user robot
  user_robot = []
  
  while true
  puts "What name would you like to give your robot?(or 'done' to exit):"

  new_name = gets.chomp
  if new_name == "done"
    break
  end

  puts "What brand would you like your robot to be?"
  brand = gets.chomp  

  puts "What color would you like your robot to be?"
  color = gets.chomp

  puts "How tall would you like your robot to be?"
  height = gets.chomp.to_i

  puts "What age maturity level would you like your robot?"
  age = gets.chomp.to_i

  new_robot = Robot.new(new_name, brand, color, height)

  user_robot << new_robot
end

p user_robot


