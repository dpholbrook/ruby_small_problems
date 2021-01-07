=begin

input: signed integer
output: number

rules:
  - return positive num if sign is + or there is no sign
  - return negative if sign is -
  - input string contains valid number
  - no conversion methods
  - use string_to_integer

algorithm:
  - if first char is -
    - pass string without leading char to string_to_integer
    - return 0 - integer value
  - if first char is +
    - pass string without leading char to string_to_integer
  - else pass it to string_to_integer




=end

INTEGERS = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
            '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(str)
  int_arr = str.chars.map { |char| INTEGERS[char] }
  total = 0
  int_arr.each { |num| total = total * 10 + num }
  total
end

# def string_to_signed_integer(str)
#   if str[0] == '-'
#     0 - string_to_integer(str[1..-1])
#   elsif str[0] == '+'
#     string_to_integer(str[1..-1])
#   else
#     string_to_integer(str)
#   end
# end

# refactored to use case statement:

# def string_to_signed_integer(str)
#   case str[0]
#   when '-' then 0 - string_to_integer(str[1..-1])
#   when '+' then string_to_integer(str[1..-1])
#   else          string_to_integer(str)
#   end
# end

# refactored to use logical negative

def string_to_signed_integer(str)
  case str[0]
  when '-' then -string_to_integer(str[1..-1])
  when '+' then string_to_integer(str[1..-1])
  else          string_to_integer(str)
  end
end



p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

















#===========================

# #Their marvelous code:
#
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
# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else string_to_integer(string)
#   end
# end
#
# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100


# sting_to_integer(string)
# converts string to array of characters
# converts characters to integers
#
#
#
# converts array of integers to a single integer
#
# sign?(string)
# check first element in array of characters
# if '-' then
#   return true
#   if '+' then
#     return false
#   else return false
#
# delete_sign(string)
# if negative_string?(string)
#   delete first character

# my hack-ass code (that works but is totally complicado)

# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5,'6' => 6,'7' => 7,'8' => 8,'9' => 9,
#   '-' => '-', '+' => '+'
#   }
#
#
# def string_to_signed_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }
#
#   value = 0
#   if digits.first == '-'
#     digits.shift
#     digits.each { |digit| value = value * 10 - digit }
#   elsif digits.first == '+'
#     digits.shift
#     digits.each { |digit| value = value * 10 + digit }
#   else
#     digits.each { |digit| value = value * 10 + digit }
#   end
#   value
# end
#
# p string_to_signed_integer('4321')
# p string_to_signed_integer('4321') == 4321
# p string_to_signed_integer('-570') == -570
# p string_to_signed_integer('+100') == 100
#


#
#
# DIGITS = {
#   '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
#   '5' => 5,'6' => 6,'7' => 7,'8' => 8,'9' => 9,
#   '-' => '-', '+' => '+'
# }
#
# def string_to_integer(string)
#   strings = string.chars
#   value = 0
#   if strings.first == '-'
#     strings.shift
#     p strings
#     digits = strings.map { |char| DIGITS[char] }
#     p digits
#     digits.each { |digit| value = value * 10 - digit }
#   elsif strings.first == '+'
#     strings.shift
#     digits = strings.map { |char| DIGITS[char] }
#     digits.each { |digit| value = value * 10 + digit }
#   else
#     digits = string.chars.map { |char| DIGITS[char] }
#     digits.each { |digit| value = value * 10 + digit }
#   end
#   value
# end



# negative or positive string number
# array = split string
# if array[0] == '-' then delete a[1] and go to iteration for negative number
# elseif first elementin array is '+' delete that and go to the iteration for postive number
# else go to iteration for positive number
#
# iteration for negative number
# value is value times ten minus the digit
#
