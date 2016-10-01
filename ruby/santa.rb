# Initializing santa instance 
# Add instance methods to santa class

class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def print_santa
    puts "--------------------"
    puts "Current santa configuration:"
    puts
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

  # SETTER METHODS
  def celebrate_birthday
    @age += 1
  end

  def gender(new_gender)
   @gender = new_gender
  end

  # GETTER METHODS
  # def age
  #    @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  def get_mad_at(reindeer_name)
     if i = @reindeer_ranking.index(reindeer_name)
      @reindeer_ranking.delete_at(i)
      @reindeer_ranking << reindeer_name
      p @reindeer_ranking
  end

  
  end
end

#############################################

santas = []

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "transsexual", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do 
#   santas << Santa.new(example_genders.sample, example_ethnicities.sample)
# end

100.times do
  santas << Santa.new(example_genders.sample,example_ethnicities.sample)
end


santas.each do |santa|
  santa.print_santa
end

puts "+++++++++++++++++++++"
counter = 1
while counter < santas.length
  santas.each do |santa|
  puts "There are now #{counter} new santas."
  counter += 1
 end
end
puts "+++++++++++++++++++++"


#############################################


# DRIVER CODE

# santa = Santa.new("male", "White")
# santa.speak
# santa.eat_milk_and_cookies("peanut butter")
# santa.celebrate_birthday
# santa.gender("female")
# santa.get_mad_at("Rudolph")
# p santa.age
# p santa.ethnicity
# santa.print_santa

#############################################


