# Method that takes integer as argument and sees if it is in the array
# if it is not in the array then returns nil
def search_array(num)
  arr = [ 52, 30, 25, 4 ]
  i = 0
  while i < arr.length
    if arr[i] == num
      p arr[i]
    else
      arr[i] == nil
    end
    i += 1
  end
end

p search_array(4)

# FIBONACCI NUMBERS

def fib(integer)
# The concept of Fibonacci numbers is pretty simple: you start off with a 0 and a 1,
  sequence = [0,1]
  i = 3
  while sequence.count < integer
# and keep adding numbers onto the list by adding the previous two.
    sequence.push(sequence[i-3] + sequence[i-2])
    i += 1
  end
  sequence
end 

p fib(6)

  
