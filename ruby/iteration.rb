# Declaring array

mascots = ["chargers", "panthers", "seahawks", "bears"]

# Iterating though array
mascots.each do |team|
  puts "The current team is #{team}"
  puts team
end

# Modifying array
mascots.map! do |squad|
  p squad.upcase
end

p mascots

# #--------------------------------

# # Declaring hash
# PS can not use map with hashes
# We feel this may have been typo

cities = {1 => 'san diego', 2 => 'charlotte', 3 => 'seattle', 4 => 'chicago'}


cities.each do |integer, city|
  puts "City number #{integer} is #{city}!"
end

#-----------------------------------

# Using methods to change arrays

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.delete_if { |num| num < 5  }
p numbers

numbers.keep_if { |num| num < 5 }
p numbers

new_number = numbers.select { |num| num > 4 }
p new_number

new_number = numbers.drop_while { |num| num < 7 }
p new_number

#---------------------------

# Creating methods to change hashes

hash = {1 => 'a', 2 => 'b', 3 => 'c', 4 => 'd'}

hash.delete_if { |num, letter| num >= 3 }
p hash

hash.keep_if { |num, letter| num >= 3 }
p hash

 new_hash = hash.select { |num, letter| letter > 'b'  }
 p new_hash

 new_hash = hash.reject { |num, letter| letter > 'b'  }
 p new_hash




 



