# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(i)
#       while i > 0
#         puts "Woof"
#         i -= 1
#       end
#     end

#   def rollover
#     puts "Rollover!"
#   end

#   def dog_years(h)
#     y = h / 4
#     puts "#{h} human years equals #{y} dog years"
#   end

#   def talk
#     puts "Tell the dog your name!"
#     name = gets.chomp
#     puts "Dog: Rerro #{name}! Woof!"
#   end

#   def initialize
#     puts "Initializing new puppy instance ..."
#   end

#   # end
# end

class Puppy
  def initialize(name)
    @name = name
  end
  
  def bark
    puts "#{@name} says: Woof!"
  end
end


# we make an array of names to build puppies with
names = ["Fido", "Spot", "Duchess", "Ginger"] 

# we make an empty container for our puppy collection
puppies = []

puts "Iterating through names list to create puppies ..."
names.each do |name|
  puts "Creating a puppy named #{name} ..."
  puppies << Puppy.new(name)
  puts "There are now #{puppies.length} Puppy instances in the array"
  puts "----"
end
    
puts "Testing each Puppy instance in the array to make sure it can bark ..."
puppies.each do |puppy|
  puppies = Puppy.new(puppy)
  p puppies
end




# # Release 0: Question 1
# spot = Puppy.new
# p spot.instance_of?(Puppy)
# spot.fetch("ball")

# # Release 0: Question 2
# spot.speak(3)

# # Release 0: Question 3
# spot.rollover

# # Release 0: Question 4
# spot.dog_years(40)

# # Release 0: Question 5
# spot.talk

# Release 2: Write Your Own Class, and Experiment!



