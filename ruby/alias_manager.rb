# Method that takes a real name and creates a fake name
# Swapps the first and last name
# Changes all the vowels to the next vowel in aeiou
# and all of the consonents to the next consonant

def swapp_name(name)
  reverse_name = name.split(' ')
  reverse_name.reverse!
  new_name = reverse_name.join(' ') 
  p new_name
end

swapp_name('Austin Kading')

