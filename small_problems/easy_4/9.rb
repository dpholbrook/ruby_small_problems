


CHARS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
          5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(int)
  str = ''

  until int == 0
    int, remainder = int.divmod(10)
    str << CHARS[remainder]
  end
  str.reverse
end

p integer_to_string(4321) #== '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'

=begin

input: integer
output: string

rules:
  - input integer is positive or 0
  - no conversion methods

algorithm:
  - create conversion hash
  - initialize empty string
  - take last digit of the number and prepend it to the string
  - do this until there are no numbers left

=end

# CHARS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
#           5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

# def integer_to_string(num)
#   str = ''
#
#   loop do
#     num, remainder = num.divmod(10)
#     str.prepend(CHARS[remainder])
#     break if num == 0
#   end
#   str
# end



# def integer_to_string(num)
#   num.digits.reverse.map { |digit| CHARS[digit] }.join
# end
#
# def integer_to_string(num)
#   str_arr = []
#   until num == 0
#     num, digit = num.divmod(10)
#     str_arr.unshift(CHARS[digit])
#   end
#   p str_arr.join
# end



# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'



# =================================




# STRING_DIGITS = %w(0 1 2 3 4 5 6 7 8 9)
#
# def integer_to_string(number)
#   result = ''
#   loop do
#     number, remainder = number.divmod(10)
#     result.prepend(STRING_DIGITS[remainder])
#     break if number == 0
#   end
#   result
# end
#
#
# # def integer_to_string(int)
# #   strings = int.digits.reverse.map { |digit| STRING_DIGITS[digit] }
# #   strings.join
# # end
#
# p integer_to_string(4321) == '4321'
# p integer_to_string(0) == '0'
# p integer_to_string(5000) == '5000'
# #
# # array to convert digits to string digits
#
# # split number into array
# # convert each digit into a string digit
# # join the string digits
# #
# #
# # input is a postive number or 0
# # output is a string of that number
# #
