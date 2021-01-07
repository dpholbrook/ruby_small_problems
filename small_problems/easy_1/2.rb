# input: integer
# output: boolean
#
# rules:
#   - assume valid integer
#   - can be positive negative or zero
#   - returns true if num abs value is odd
#
# algorithm:
#   - num.abs.odd?

# def is_odd?(num)
#   num.abs.odd?
# end

# FEX


def is_odd?(num)
  num.remainder(2).abs == 1
end










# def is_odd?(int)
#   int % 2 == 1
# end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# UTP
# - method that can take an integer argument
#   -argument can be postive zero or negative
# - returns true if arguments abs value is odd
# - assume that argument is a valid integer
# - can not use the #odd? or #even? methods
#
# Input
# - integer that is positive zero or negative
# - assume that it is a valid integer
#
# Output
# - no output
# - returns true if arguments absolute value is odd
#
# puts is_odd?(8) => false
# puts is_odd?(0) => false
# puts is_odd?(-6) => false
# puts is_odd?(9) => true
# puts is_odd?(-7) => true
#
# Algorithm
# - define is_odd? method to take one integer parameter
# - if the absolute value of the integer is odd, return true
# - otherwise return, false
#
