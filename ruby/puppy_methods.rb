class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(i)
      while i > 0
        puts "Woof"
        i -= 1
      end
    end

  def rollover
    puts "Rollover!"
  end

  def dog_years(h)
    y = h / 4
    puts "#{h} human years equals #{y} dog years"
  end

  def talk
    puts "Tell the dog your name!"
    name = gets.chomp
    puts "Dog: Rerro #{name}! Woof!"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end

end


# ----------------------------------------------------

class Tree
  def initialize(name)
    puts "Initializing new puppy instance ..."
  end
  
  def climb
    puts "You are climbing the tree!"
  end
end

# Release 2: Write Your Own Class, and Experiment!

# we make an array of kid's names to climb the tree with.
kids_names = ["Tom", "Jane", "Precious", "Tray"] 

# we make an empty container for our forest. 
forest = []

puts "Iterating through names list to enter into forest ..."

n = 0

while n < 49
  n = kids_names.length
  kids_names.push('a')
  p kids_names
end

kids_names.each do |name|
  puts "#{kids_names} went into the forest..."
  forest << Tree.new(name)
  puts "There are now #{forest.length} kid instances in the array"
  puts "----"
end

    
puts "Testing each kid instance in the array to make sure it can climb the tree ..."
forest.each do |kid|
  kid.climb
end


# # Release 0: Question 1.
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









