=begin

input: number
output: number

rules:
  - n is the nth fibonacci number
  - return the nth fibonacci number using recursion

algorithm:
  -

=end

def fibonacci(n)
  return 1 if n == 1 || n == 2
fibonacci(n - 1) + fibonacci(n - 2)
end


# input: integer
# output: integer
#
# rules:
#   - input is nth number in fibonacci sequence
#   - output is the nth Fibonacci number
#   - Fibonacci
#     - sequence starting with 1 and 1
#     - each number is the sum of previous two
#
# algorithm:
#   - return 1 if n == 1 || n == 2


# def fibonacci(n)
#   return 1 if n <= 2
#   fibonacci(n - 1) + fibonacci(n - 2)
# end



# test cases:
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
