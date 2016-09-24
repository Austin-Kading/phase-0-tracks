# Method that takes a real name and creates a fake name

# Swapps the first and last name
def swapp_name(name)
  reverse_name = name.split(' ')
  reverse_name.reverse!
  new_name = reverse_name.join(' ') 
  p new_name
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
  p str_new.join
end

def fake_name(name)
  agent_name = next_vowel.reverse!
  puts "Your new name is #{agent_name}."
end




# DRIVER CODE

# swapp_name('Austin Kading')
# next_vowel('felicia torres')
# next_consonant('austin kading')
fake_name('austin kading')


