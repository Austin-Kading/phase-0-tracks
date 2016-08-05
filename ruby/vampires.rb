#!/usr/bin/ruby
#vampire survey
puts "How many employees will be processed?"
number_of_employees = gets.chomp.to_i

while number_of_employees >= 0
  print "What is your name? "
  name = gets.chomp

  print "How old are you? "
  age = gets.chomp.to_i

  print "What year were you born? "
  year_born = gets.chomp.to_i

  print "Our company cafeteria serves garlic bread. Should we order some for you?(y/n) "
  garlic_eater = gets.chomp

  if garlic_eater == "y"
    garlic_eater = true
  elsif garlic_eater == "n"
    garlic_eater = false
  else 
    abort "Please choose y or n"
  end

  print "Would you like to enroll in the company's health insurance?(y/n) "
  insurance = gets.chomp

  #This is will allow a "y" or "n" input
  if insurance == "y"
    insurance = true
  elsif insurance == "n"
    insurance = false
  else
    abort "Please pick y or n"
  end


  #Vampire detection logic 

  age_right = (2016 - year_born - age).abs <= 1

  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definetely a vampire"
  elsif !age_right && !garlic_eater && !insurance
    puts "Almost certainly a vampire"
  elsif !age_right && (!garlic_eater !insurance)
    puts "Probably a vampire"
  elsif age_right && (garlic_eater || insurance)
    puts "Probably not a vampire"
  else
    puts "Results inconcluvise"
  end
  number_of_employees = number_of_employees - 1
end