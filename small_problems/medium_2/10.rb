=begin

input: integer
output: intger

rules:
  - input is the first n integers
  - output is square of the sum minus sum of the squares

algorithm:
  - sum array of integers and square that number
  - square each number and sum those numbers
=end


def sum_square_difference(num)
  numbers = (1..num).to_a

  ((numbers.sum)**2) - (numbers.map { |number| number ** 2 }.sum)

end

# input: integer
# output: integer
#
# rules:
#   - input is the nth positive integer
#   - output is the difference between the square of the sum of the first n positive integers
#   - and the sum of the squares of the first n postive integers
#
# algorithm:
#   - iterate up to nth
#     - sum is nth + nth
#     -
#

# def sum_square_difference(nth)
#   sum = 0
#   1.upto(nth) do |count|
#     sum += count
#   end
#   sum ** 2
#
#   sum_squared = 0
#   1.upto(nth) do |count|
#     sum_squared += count ** 2
#   end
#
#   (sum ** 2) - sum_squared
# end

sum_square_difference(3)

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
