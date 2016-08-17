# Initialize santa class with 3 instance methods
# Initialize, Speak and eat_milk_and_cookies methods


class Santa
  def initialize(gender, ethnicity)
    @gender 
    @ethnicity 
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
end
# Set empty santa array to get personal santa input from user
santa_clause = []
puts "Yo, what's your gender"
gen = gets.chomp
puts "And what's your ethnicity"
eth = gets.chomp
santa_clause = Santa.new(gen, eth)

# gives examples of multiple instances for user to input as santa
genders = ["male", "female", "agender", "bigender", "N/A"]
ethnicities = ["white", "black", "latino", "japanese", "korean", "N/A"]
genders.length.times do |i|
  santa_clause << Santa.new(genders[i], ethnicities[i])
end

