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

def request_calc(a, operator, b)
  puts "What calculation would you like to perform?"
  user_calc = request_calc(calculate(a, operator, b))
   answer
end

# CREATE USER INTERFACE

# puts "What calculation would you like to perfom?"
# p calculate(a, operator, b)

request_calc

