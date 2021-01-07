=begin

input: number
output: number

rules:
  - output is the number reversed

=end

def reversed_number(num)
  num.to_s.reverse.to_i
end

# input: positive integer
# output: number with digits reversed
#
# rules:
#   - dont return a number with leading zeros
#
#
# questions: negative numbers, floats, strings, leading zeros?
# algorithm:
#   - convert integer to string
#   - string reverse
#   - convert string to integer
#   - eliminate leading zeros

# def reversed_number(num)
#   num.to_s.reverse.to_i
# end

p reversed_number(12000)

# test cases:
p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
