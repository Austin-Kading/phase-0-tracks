# Write a calculate method that takes three parameters: an integer,
# an operator string (example: "+"), and another integer.

def calculate(int1, operator, int2)
  if operator == '+'
     int1 + int2
  elsif operator == '*'
     int1 * int2
  elsif operator == '/'
     int1 / int2
  elsif operator == '-'
     int1 - int2
  else
    puts 'Please try another problem.'
  end
end

p calculate(4, '+', 6)


