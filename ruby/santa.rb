# Initialize santa class with 3 instance methods
# Initialize, Speak and eat_milk_and_cookies methods


class Santa
  def intitialize(gender, ethnicity)
    @gender 
    @ethnicity 
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 
  end

def speak
    puts "Ho, ho, ho! Haaaappy Holidays!"
end

def eat_milk_and_cookies(cookie)
  puts "That was a good #{cookie}!"
  end
end
# Austin figure this part out when you get back
santa_clause = Santa.new
santa_clause.speak
santa_clause.eat_milk_and_cookies("snickerdoodle")

santa_clause = []

genders = ["male", "female", "agender", "bigender", "N/A"]
ethnicities = ["white", "black", "latino", "japanese", "korean", "N/A"]
genders.length.times do |i|
  santa_clause << Santa.new(genders[i], ethnicities[i])
end

