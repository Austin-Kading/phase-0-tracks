# Declaring array

# mascots = ["chargers", "panthers", "seahawks", "bears"]

# # Iterating though array
# mascots.each do |team|
#   puts "The current team is #{team}"
#   puts team
# end

# # Modifying array
# mascots.map! do |squad|
#   p squad.upcase
# end

# p mascots

# #--------------------------------

# # Declaring hash

# cities = {1 => 'san diego', 2 => 'charlotte', 3 => 'seattle', 4 => 'chicago'}


# cities.each do |integer, city|
#   puts "City number #{integer} is #{city}!"
# end

#-----------------------------------

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# numbers.delete_if { |num| num < 5  }
# p numbers

# numbers.keep_if { |num| num < 5 }
# p numbers

# new_number = numbers.select { |num| num > 4 }
# p new_number

new_number = numbers.drop_while { |num| num < 7 }
p new_number