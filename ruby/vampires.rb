# Gathering employee data

  puts "How many employees would you like to process?"
  num_of_employees = gets.chomp.to_i

  while num_of_employees >= 0
  print "What is your name? \n"
  name = gets.chomp

  print "How old are you? \n"
  age = gets.chomp.to_i

  print "What year were you born?\n"
  year_born = gets.chomp.to_i

  print "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)\n"
  likes_garlic = gets.chomp

    if likes_garlic == "y"
      likes_garlic = true
    elsif likes_garlic == "n"
      likes_garlic = false
    else
      abort "Please choose (y or n)"
    end

  print "Would you like to enroll in the company’s health insurance? (y/n)\n"
  insurance_enroll = gets.chomp

    if insurance_enroll == "y"
      insurance_enroll = true
    elsif insurance_enroll == "n"
      insurance_enroll = false
    else
      abort "Please choose (y or n)"
    end

  Vampire detetion logic

  age_right = 2016 - year_born - age.abs <= 1

  if name == "Drake Cula" || name == "Tu Fang"
    puts "Definately a vampire."
  elsif !age_right && !likes_garlic && !insurance_enroll 
    puts "Almost certainly a vampire."
  elsif !age_right && ( !likes_garlic || !insurance_enroll )
    puts "Probably a vampire."
  elsif age_right && (likes_garlic || insurance_enroll)
    puts "Probably not a vampire."
  else
    puts "Results inconclusive"
  end
  num_of_employees = num_of_employees - 1
end




  




















