# Initialize santa class with 3 instance methods.
# Initialize, Speak and eat_milk_and_cookies methods.


class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
# method that outputs what santa is saying
  def speak
      puts "Ho, ho, ho! Haaaappy Holidays!"
  end
  # method that outputs a string
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

<<<<<<< HEAD
  # Setter method that adds a year to santa
  def celebrate_birthday
    @age += 1
  end

  # Setter method
  def get_mad_at(reindeer_name)
    if i = @reindeer_ranking.index(reindeer_name)
      @reindeer_ranking.delete_at(i)
      @reindeer_ranking << reindeer_name
    end
  end
=======
def santa_info
  puts "Gender: #{@gender}"
  puts "Ethnicity: #{@ethnicity}"
  puts "Reindeer ranking: #{@reindeer_ranking}"
  puts "Age: #{@age}"

# Getter methods
def age
  @age
end

def ethnicity
  @ethnicity
end

# Setter method that adds a year to santa
def celebrate_birthday
  @age += 1
end
>>>>>>> master

  def gender 
      @gender = gender
  end

<<<<<<< HEAD
  def ethnicity
    @ethnicity = ethnicity
=======
  def gender(new_gender)
    @gender = new_gender
>>>>>>> master
  end
end
  santa = Santa.new("male", "white")
  santa.speak
  santa.eat_milk_and_cookies("snickerdoodle")

  # Set empty santa array to get personal santa input from user

<<<<<<< HEAD
=======

santa = Santa.new("male", "white")
santa.speak
santa.eat_milk_and_cookies("snickerdoodle")
>>>>>>> master

  santa_clause = []

#   # gives examples of multiple instances for user to input as santa
  genders = ["male", "female", "agender", "bigender", "N/A"]
  ethnicities = ["white", "black", "latino", "japanese", "korean", "N/A"]

<<<<<<< HEAD
  genders.length.times do |i|
    santa_clause << Santa.new(genders[i], ethnicities[i])
end

  ###############################

  # Release 4 making tons of santas 
=======
santa_clause = []
  puts "Yo, what's your gender"
gen = gets.chomp
  puts "And what's your ethnicity"
eth = gets.chomp

# santa_clause << Santa.new(gen, eth)
genders = ["male", "female", "agender", "bigender", "N/A"]
ethnicities = ["white", "black", "latino", "japanese", "korean", "N/A"]
>>>>>>> master

  genders = ["male", "female", "agender", "bigender", "N/A"]
  ethnicities = ["white", "black", "latino", "japanese", "korean", "N/A"]
  50.times do |santa|
    santa_clause << Santa.new(genders.shuffle[santa], ethnicities.shuffle[santa])
end


<<<<<<< HEAD
  p santa_clause
=======
>>>>>>> master
