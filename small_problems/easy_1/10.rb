# input: positive integer, boolean
# output: positive integer
#
# rules:
#   - if true then return half of input integer
#   - if false then return 0
#
# algorithm:
#   - return 0 if boolean is false
#   - otherwise, return num/2

# def calculate_bonus(num, boolean)
#   boolean == false ? 0 : num/2
# end

# def calculate_bonus(num, boolean)
#   boolean ? num/2 : 0
# end

def calculate_bonus(num, bonus)
  bonus ? num/2 : 0
end


# ==================

# def calculate_bonus(integer, boolean)
#   boolean ? integer / 2 : 0
# end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000





# Input
# - an integer (salary)
# - a boolean
#
# Output
# - an integer
#
# Rules
# - if the boolean is true, the method returns half of the integer
# - if the boolean is false, the method returns 0
#
# Test Cases
#   puts calculate_bonus(2800, true) == 1400
#   puts calculate_bonus(1000, false) == 0
#   puts calculate_bonus(50000, true) == 25000
#
# Algorithm
# if true
#   integer / 2
# else
#   0
