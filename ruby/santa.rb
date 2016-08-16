# Initialize santa class with 3 instance methods
# Initialize, Speak and eat_milk_and_cookies methods


class Santa
  def initialize
    puts "Initializing Santa instance..."
  end

def speak
    puts "Ho, ho, ho! Haaaappy Holidays!"
end

def eat_milk_and_cookies(cookie)
  puts "That was a good #{cookie}!"
  end
end

santa_clause = Santa.new
santa_clause.speak
santa_clause.eat_milk_and_cookies("snickerdoodle")

