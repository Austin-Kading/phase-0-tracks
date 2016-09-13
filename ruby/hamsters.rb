# Hamster info

puts "What is the name of the hamster?"
name = gets.chomp

puts "What is the volume level of this hamster from 1 to 10?"
vol_lev = gets.chomp.to_i

puts "What is the fur color of this hamster?"
fur_col = gets.chomp

puts "What is the age of this hamster?"
age = gets.chomp

# Setting age to nil if answer is left blank
if age.empty?
   age = nil
 else
   age = age.to_i
 end


# Question for adoption
def ask question
  while (true)
    puts question
    adoption = gets.chomp.downcase

    if (adoption == 'yes' or adoption == 'no')
      if adoption == 'yes'
        return true
      else
        return false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end 
end
ask("Is this hamster a good candidate for adoption? (yes or no)")


# Printing Hamster data
puts "The name of the hamster is #{name}. \n"
puts "On the scale of 1 to 10 this guy is a #{vol_lev}. \n"
puts "This hamster has a beautiful #{fur_col} coat. \n"

