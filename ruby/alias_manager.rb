# Method that takes a real name and creates a fake name

# Swapps the first and last name
def swapp_name(name)
  reverse_name = name.split(' ')
  reverse_name.reverse!
  new_name = reverse_name.join(' ')
  new_name
end

# Changes all the vowels to the next vowel in aeiou
# and all of the consonents to the next consonant

def next_vowel(str)
  vowels = ["a", "e", "i", "o", "u"]
  consonents = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
  str = str.split('')
  str_new = str.map do |char|
    if vowels.include?(char)
      vowels.rotate(1)[vowels.index(char)]
    elsif consonents.include?(char)
      consonents.rotate(1)[consonents.index(char)]
    else
      char
    end
  end
  str_new.join
end

def fake_name(name)
  agent_name = swapp_name(next_vowel(name))
  puts "Your new name is #{agent_name}."
end



# DRIVER CODE

# swapp_name('Austin Kading')
# next_vowel('felicia torres')
# next_consonant('austin kading')
fake_name('austin kading')

# USER INTERFACE

puts "Enter your name and we will give you your alias name."
puts "Just type 'quit' when you are finished."
alias_name = user_input(fake_name(name))

while user_input = gets.chomp
  if user_input
    puts "Your new alias name is: #{alias_name}"
  elsif user_input == "quit"
    break
  end
end