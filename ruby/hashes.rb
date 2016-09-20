# INTERIOR DESIGN PROGRAM
# INTERFACE for interior designer to input client data
# get clients name, age, number of children, decor theme

# Initializing client hash
client = {}

# Prompting user for information
puts "What is your name?"
client[:name] = gets.chomp.to_s

puts "What is your age?"
client[:age] = gets.chomp.to_i

puts "How many children do you have?"
client[:num_of_children] = gets.chomp.to_i

puts "What is your favorite decor theme?"
client[:dec_theme] = gets.chomp

# DRIVER CODE 
p client