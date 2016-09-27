# Write a calculate method that takes three parameters: an integer,
# an operator string (example: "+"), and another integer.

def calculate(a, operator, b)
  if operator == '+'
     a + b
  elsif operator == '*'
     a * b
  elsif operator == '/'
     a / b
  elsif operator == '-'
     a - b
  else
    puts 'Please try another problem.'
  end
end

# p calculate(4, '+', 5)
# p calculate(4, '-', 5)
# p calculate(4, '/', 5)
# p calculate(4, '*', 5)

# CREATE USER INTERFACE


# I can't figure out how to get my loop to break properly
# Going to bring it into office hours
def request_calc
  while true
    puts "What calculation would you like to perform?"
    puts "Type 'done' when you have finished."
    operator = gets.chomp
    puts "A #{operator} B. A = ?"
    a = gets.chomp
    puts "#{a} #{operator} B. B = ?"
    b = gets.chomp
    answer = calculate(a.to_i, operator, b.to_i)
    puts "#{a} #{operator} #{b} = #{answer}"
    false == "done"
    break
  end
end

p request_calc

