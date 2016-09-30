# Initializing santa instance 
# Add instance methods to santa class

class Santa

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def print_santa
    puts "--------------------"
    puts "Current santa configuration:\n"
    puts "Gender ---> #{@gender}"
    puts "Ethnicity ---> #{@ethnicity}"
    puts "Age ---> #{@age}"
    puts "-------------------"
  end

  def speak
    puts "Ho, ho, ho! Haaaaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

end

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "transsexual", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do 
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end

santas.each do |santa|
  santa.print_santa
end





# DRIVER CODE

# santa = Santa.new("male", "White")
# santa.speak
# santa.eat_milk_and_cookies("peanut butter")
# p santa


