# define puppy class

class Puppy
  # Class variable that keeps track of how many animals there are in the class.
  @@no_of_animals = 0
  # Initializing multiple instances of the class
    def initialize(name, color=nil, behavior, friendly)
      @name = name
      @color = color
      @behavior = behavior
      @friendly = friendly
  end 
end

# Assigning instances to Benji the dog

Benji = Puppy.new("Benji","brown", "playful", "yes")

