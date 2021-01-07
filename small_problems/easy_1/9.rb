# input: integer
# output: integer
#
# rules:
#   - return the sum of the digits

# algorithm:
#   - split num into array of digits
#   - sum array of digits

def sum(num)
  num.digits.reverse.inject(:+)
end

#========================

# def sum(num)
#   num.to_s.chars.map(&:to_i).inject(:+)
# end

p sum(298)

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# Algorithm
# START
# - convert integer into string
# - split string into array
# - iterate on array
#   - convert each element to an integer
# - sum the elements of the array
# END
#
# Method that takes one argument, a positive integer and returns the sum of the digits
#
# Input
# - positive integer
#
# Output
# - positive integer
#
# Test Cases
# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45
#
# Data Structure
# - integer
# - convert to string
# - split to array
# - convert to integers
# - sum integers
