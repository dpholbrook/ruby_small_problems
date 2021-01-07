=begin

input: number
output: number

rules:
  - output is the index of the first fib with input digits
  - index starts at 1

algorithm:
  - generate fibonacci numbers with a loop
  - push each fib to an array
  - break from loop when the most recent fib has n digits
  - return the size of the array

=end

def find_fibonacci_index_by_length(min_digits)
  fib_arr = [1, 1]
  a, b = fib_arr

  loop do
    fib = a + b
    fib_arr << fib
    break if fib.digits.size == min_digits
    a, b = b, fib
  end
  fib_arr.size
end


# input: integer
# output: integer
#
# rules:
#   Explicit requirements:
#     - calculate and return the index in the Fibonacci sequence of the first number that has n digits
#     - argument is always greater than or equal to 2
#
# questions:
#   - is there a limit to the argument?
#
# Algorithm:
#   - initialize fibonaccis to empty array [1, 1]
#   - calculate fibonacci sequence until digits are reached
#     - a = 1
#     - b = 1
#     - enter loop
#
#       - c = a + b
#       - push c to fibonaccis
#       - a = b
#       - b = c
# =>    - break if c.to_s.size > num
#       - end loop
#       - return array of fibonaccis up to num digits
#
# def find_fibonacci_index_by_length(num)
#   fibonaccis = [1, 1]
#   a = 1
#   b = 1
#   loop do
#     c = a + b
#     fibonaccis << c
#     a = b
#     b = c
#     break if c.to_s.size == num
#   end
#   fibonaccis.size
# end

p find_fibonacci_index_by_length(2)

# test cases:
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
