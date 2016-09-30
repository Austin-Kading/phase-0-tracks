# Initializing santa instance 
# Add instance methods to santa class

class Santa

  def initialize
    puts "Initializing santa instance..."
  end

  def speak
    puts "Ho, ho, ho! Haaaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

end


# DRIVER CODE

santa = Santa.new
# santa
santa.speak
santa.eat_milk_and_cookies("peanut butter")