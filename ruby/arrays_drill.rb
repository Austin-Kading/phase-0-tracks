# Method that will take array and item and return both.


def add_to_array(array_name, array_item)
  # Start empty array
  array1 = []
  # Updating array with array name.
  array1 = array_name
  # Creating new array.
  new_array = []
  # New array combining items.
  new_array = array1 << array_item
  p new_array 
end

p add_to_array(["a", "b", "c", 1, 2], 3)
p add_to_array([], "a")

# Method that outputs array.

def build_array(value1, value2, value3)
  items_in_array = [value1, value2, value3]
  p items_in_array
end

p build_array(1, "two", nil)




# Initializing empty array.
school_bag = []

p school_bag

# Adding items to array.
school_bag = ["pencils", "notebook", "calculator", "folder", "pens" ]

p school_bag

# Deleting item at index 2.
school_bag.delete_at(2)

p school_bag

# Insert items at index 2.
school_bag.insert(2,"lunch box")

p school_bag

#Remove first item of array withought referring to index.
school_bag.shift

p school_bag

# Ask array for a certain item.
#p school_bag.include?("calculator") { |s| puts "#{s} is not in the back"}


#p school_bag.fetch(10,"scissors") { |s| puts "#{s} is not in the back"}

#p school_bag.select{|item| "pens" == "pens"}

# New array with new items.
in_lunchbox = ["apple", "banana", "peach"]

# Adding two arrays in a new variable
new_array = school_bag + in_lunchbox

p new_array