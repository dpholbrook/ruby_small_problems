# split string into array of chars
# iterate on char
# convert char to digit
# number = num + (digit * 10)

INTEGERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
            '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(str)
  result = 0

  str.chars.each do |char|
    num = INTEGERS[char]
    result = (result * 10) + num
  end

  result
end


p string_to_integer('403')

=begin

input: string number
output: integer

rules:
  - output is integer equivalent of string
  - dont worry about  + or -
  - no conversion methods

algorithm:
  - make conversion hash
  - split string of chars into array of chars and convert to array of int
  - initialize a total variable
  - iterate on array to join it into an integer

=end

# INTEGERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#             '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }
#
# def string_to_integer(str)
#   int_arr = str.chars.map { |char| INTEGERS[char] }
#   total = 0
#   int_arr.each { |num| total = total * 10 + num }
#   total
# end
#
#
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570


# looked at their solution to see how you build each integer into one integer

# =============================




# Further Exploration:

# input: hexadecimal string
# output: integer
# rules:
# => explicit requirements:
# =>    convert hexadecimal string to integer number

# Algorithm
# => initialize hex to conversion hash
# => initialize integers to empty array
# => string.upcase!
# => convert each hex char to integer value and push that value to integer array
# =>  pwr = -1
# =>  idx = 0
# =>  enter a loop
# =>    integers << (hex[str[idx]] * 16 ** (string.size - 1))
# =>    idx +=1
# =>    pwr -= 1
# =>  convert integer elements to integer
# =>    value = 0
# =>    iterate on integers array
# =>      value = value * 10 + current element

# =>THIS REMAINS UNFINISHED

# HEX = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,'6' => 6,
#   '7' => 7,'8' => 8,'9' => 9, 'A' => 10, 'B' => 11, 'C' => 12, 'D' => 13,
#   'E' => 14, 'F' => 15
# }
#
# def hexadecimal_to_integer(hex_string)
#   integers = []
#   hex_string.upcase!
#   pwr = -1
#   idx = 0
#   loop do
#     integers << (HEX[hex_string[idx]] * 16 ** (hex_string.size - 1))
#     idx += 1
#     pwr -= 1
#   end
#
# end

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }
#
#   value = 0
#   digits.each { |digit| value = value * 10 + digit }
#   value
# end

# hexadecimal_to_integer('4D9f') == 19871


# #refactored
# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5,'6' => 6,'7' => 7,'8' => 8,'9' => 9
# }
#
# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }
#
#   value = 0
#   digits.each { |digit| value = value * 10 + digit }
#   value
# end
#
# p string_to_integer('4321')
#
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570

# my code:
# def array_of_integers(number_string)
#   string_to_integer_hash = {
#                             '0' => 0,
#                             '1' => 1,
#                             '2' => 2,
#                             '3' => 3,
#                             '4' => 4,
#                             '5' => 5,
#                             '6' => 6,
#                             '7' => 7,
#                             '8' => 8,
#                             '9' => 9
#                           }
#
#   array = number_string.split('')
#
#   integers_array = array.map { |number| string_to_integer_hash[number] }
# end
#
# def string_to_integer(number_string)
#    integers = array_of_integers(number_string)
#    integer = 0
#    digit_counter = 1
#    integers.each do |index|
#      tens = 10 ** (integers.length - digit_counter)
#      integer += index * tens
#      digit_counter += 1
#    end
#    integer
#  end
#
# p string_to_integer('4321')
#
# p string_to_integer('4321') == 4321
# p string_to_integer('570') == 570



#
# p string_to_integer('4321')
#
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
#
#
# Input is a string of digits
# Output return number as integer
#
# Algorithm
#
# string to array of integers
# START
# SET digit hash
# SET array to split string
# WHILE
# SET array_of_integers = map
#   if digit hash has a key equal to element
#   return the value for that key
# END
# return array_of_integers
# END
#
# START string_to_integer
# SET integer = 0
# WHILE
# iterate on array_of_integers
# SET ten_power_reducer = 1
# SET ten_power = 10 ** (a.length - digit_counter)
# SET integer += a[element] * ten_power
# SET ten_power_reducer += 1
# END
# READ integer
# END
#
#
#
#   join new array
#
#
# def string_to_integer(string)
#   string
# end
#
# digits = {
#   '0' => 0,
#   '1' => 1,
#   '2' => 2,
#   '3' => 3,
#   '4' => 4,
#   '5' => 5,
#   '6' => 6,
#   '7' => 7,
#   '8' => 8,
#   '9' => 9
# }
#
# p string_to_integer('4321')
#
# string_to_integer('4321') == 4321
# string_to_integer('570') == 570
