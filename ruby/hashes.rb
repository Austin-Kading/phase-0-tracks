# Initializing empty hash.
client = {}

# Asking client for age.
puts "What is your full name?"

# Clients input will update client name in hash.
client[:full_name] = gets.chomp

# Promp user for age 
puts "What is your age?"

# Assigns user input to age symbol in client hash.
client[:age] = gets.chomp.to_i

# Prompt user for number of children.
puts "How many children do you have?"

# Number of children is added to symbol in client hash.
client[:children] = gets.chomp.to_i

# Asking client if they like wood decor.
puts "Do you like wood decor.(y/n)"

# Converts yes or no too boolean
input = gets.chomp
client[:likes_wood] = input == "y"



p client
#Asks the user if they would like to change a keyword
puts "Which one of the answers would you like to change?"
if ("none")
  puts "Please choose a keyword to change"
if input == "age" || input == "children"
  client[input.to_sym] = gets.chomp.to_i
elsif input == "name" || input == "decor"
  client[input.to_sym] = gets.chomp
else
  client[input.to_sym] = gets.chomp == "y"
  end
  puts client

end

    

