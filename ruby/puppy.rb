# define puppy class

class Puppy
  # Class variable that keeps track of how many animals there are in the class.
  @@no_of_animals = 0
  # Initializing multiple instances of the class
    def initialize(name, color, behavior, friendly)
      @name = name
      @color = color
      @behavior = behavior
      @friendly = friendly
  end 
end

# Assigning instances to Benji the dog

p benji = Puppy.new("Benji","brown", "playful", true)
p fido = Puppy.new("fido","red", "playful", false)
p spot = Puppy.new("spot","white", "playful", true)
