# Method will swap first and last name of agent
# Method will also change the vowels


def next_vowel(name)
  next_vowel = next_vowel
  vowels = "aeiou"
  i = 0
  while i < name.length
    if name[u] == vowels
      next_vowel += vowels[vowels.index(name[a]) + 1]
    else
      puts "no vowels found"
    end
    i += 1
  end
  next_vowel
end


def swap_name(name)
  puts " #{name}"
end

swap_name("Felicia Torres".reverse)

vowels = ["a", "e", "i", "o", "u"]

index = 0
while index < vowels.length
  puts "#{vowels[index] + 1}"
  index += 1
end




###############################

 #User interface
 #User enters name to get a fake one
 puts "Please enter your name here"
# #Get user input
 user_name = gets.chomp

 puts "Please enter what you would like your fake name to be."
 # User puts new name as input
 new_name = gets.chomp

 # stores new name as variable
 until "enter"
 if user_name == new_name
   puts "Your new name is:" + "#{new_name}"
 else
   puts "You must retry"
 end

