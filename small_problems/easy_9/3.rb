=begin

input: number
output: number

rules:
  - if number is positive, return negative
  - if number is negative or 0, return number

algorithm:
  -

=end

def negative(num)
  -(num.abs)
end

# input: number
# output: number
#
# rules:
#   - return negative number if input is positive
#   - return the original number if input is 0 or negative
#
# algorithm:
#   - check to see if the input is positive
#     - if it is then return negative version
#     - otherwise return the original version
#

# def negative(num)
#   num.positive? ? -num : num
# end
p negative(0)
# test cases:
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
