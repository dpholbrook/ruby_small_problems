# n times add 1 or 0 to string
# init new string
# num toggles between 1 and 0

def stringy(num, start)
  result = ''
  num.times do |_|
    result << start
    start = start == '1' ? '0' : '1'
  end
  result
end


# input: positive integer
# output: string
#
# rules:
#   - string is alternating zeros and ones
#   - starts with 1
#   - string size is integer
#
# algorithm:
#   - initialize number to 1
#   - initizlize str
#   - num times
#     - add number to string
#     - toggle number to 0 if 1 and 1 if 0
#   - return string

# solution with FEX

# def stringy(size, start = '1')
#   number = start
#   binary = ''
#
#   size.times do
#     binary << number
#     number = number == '1' ? '0' : '1'
#   end
#
#   binary
# end

p stringy(6, '0')
# 
# p stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'



# ===================================

#further exploration:
# def stringy(number, optional = 1)
#   a = []
#   number.times do |index|
#     if optional == 1
#       number = index.even? ? optional : 0
#     else
#       number = index.even? ? 0 : 1
#     end
#     a << number
#   end
#   a.join
# end
#
#
# p stringy(9, 0)

#their algorithm
# - get an integer
# - intialize an empty array
# - integer times
#   - assign either one or zero to a variable
#   - if integer is even, assign 1
#   - else assign 0
#   - push the variable to the array
# - join array of integers into a string


#my solution:

# def binary_string(num)
#   a = []
#   num.times {a.push('1')}
#   iterator = 1
#   while iterator < a.length
#     a[iterator] = '0'
#     iterator += 2
#   end
#   a = a.join('')
# end
#
# p binary_string(4)
# p binary_string(16)
# p binary_string(19)
# p binary_string(3)
#
# puts binary_string(6) == '101010'
# puts binary_string(9) == '101010101'
# puts binary_string(4) == '1010'
# puts binary_string(7) == '1010101'
#
#
#
# #
# #
# # ALGORITHM
# # - get integer argument
# # - initialize empty array
# # - integer times push '1' to array
# # - iterator = 1
# # - while iterator < array length
# # - array[iterator] = '0'
# # - iterator += 2
# # - join array of strings into one string
# # - reference the element in the array to return it
# #
# # UTP
# # - method that takes one argument, a postive integer
# # RULES
# # - returns string of 1s and 0s alternating
# # - always starts with 1
# # - length of sting = integer
# # INPUT
# # - positive integer
# # OUTPUT
# # - string
# #
# # TEST CASES
# # def binary_string(5) => "10101"
# # def binary_string(-3) => verify positive?
# # def binary_string('l') => verify integer?
# # def binary_string(0) => verify nonzero?
# #
# # DATA STRUCTURE
# # - input is an integer
# # - array with integer string elements
# # - join sting elements
# # - return string
