# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # write a method that starts hash
  # use built in method to make each item from string into key of the hash
  # use built in method to make each item from string into key of the hash
  # set default quantity
    # set each item at default quantity of 1 by iterating through each item
# print the list to the console [can you use one of your other methods here?]
# output: 
# write hash
# list = Hash.new
  def grocery_list(groceries)
    list = Hash.new
    grocery_array = groceries.split(' ')
    grocery_array.each { |item| list[item] = 1 }
    list
  end


# Method to add an item to a list
# input: item name and optional quantity
# steps:
# Need a method that takes three arguments, one being list, other being the name  a third one being the optional quantity
# output:
# Method then turns it to the key value pair, then adds it to the hash
# Print updated hash with new key value

  def add_item(list, item, quantity = 1)
    list[item] = quantity
    list
  end


# Method to remove an item from the list
# input: item item
# Method can take the item item and list as an argument
# steps:
# Use the .delete method to remove item from the hash
# output:# Print updated hash
  
  def remove_item(list, item)
    list.delete(item)
    list
  end



# Method to update the quantity of an item
# input: # item item and quantity
# steps: # method takes 3 arguments, 1 list, 2 is item and the other is quantity
# output: # print updated hash
  def update_item(list, item, quantity)
    list[item] = quantity
    list
  end

# Method to print a list and make it look pretty
# input: # the hash
# steps: # iterate through items  
# output: # prints as a statement
  def printing_list(list)
    list.each { |item, quantity| puts "There is/are #{quantity} #{item} in your list." }
  end  



#DRIVER CODE
list = grocery_list("carrots apples cereal pizza")
add_item(list, "eggs")
remove_item(list, "carrots")
update_item(list, "pizza", 2)
printing_list(list)