# I mostly marked this one becuase of the interesting case statement in their solution
# No need to do again, fairly easy


=begin

input: integer
output: string

rules:
  - input can be any integer including negative
  - convert to string

algorithm:
  - if the number is negative
    - pass the positive version of the number to conversion method
    - prepend '-' to result


=end

CHARS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
          5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(num)
  str = ''

  loop do
    num, remainder = num.divmod(10)
    str.prepend(CHARS[remainder])
    break if num == 0
  end

  str
end

def signed_integer_to_string(num)
  return '0' if num.zero?
  result = integer_to_string(num.abs)
  num.negative? ? '-' + result : '+' + result
end

# FEX

def signed_integer_to_string(number)
  result = integer_to_string(number.abs)
  case number <=> 0
  when -1 then '-' + result
  when +1 then '+' + result
  else         integer_to_string(number)
  end
end




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
# #my version of their solution:
# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then '-' + integer_to_string(-number)
#   when 1 then '+' + integer_to_string(number)
#   when 0 then '0'
#   end
# end

# my solution:

# def signed_integer_to_string(number)
#   if number.negative?
#     integer_to_string(number.abs).prepend('-')
#   elsif number == 0
#     integer_to_string(number)
#   else
#     integer_to_string(number).prepend('+')
#   end
# end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

# signed_integer_to_string(integer) algorithm
# if integer is negative
#   make number positive
#   prepend '-' to the return value of integer_to_string_integer
# if integer is positive
#   prepend '+' to the return value of integer_to_string_integer
# return string
#
#
# add functionality so that you can use integer_to_string on negative numbers
# input is a positive or negative integer
# output is a string representation
# no other conversion methods allowed
#
# integer to string algorithm
# input is an integer
# result is an empty string
# loop
# chop the last digit off of the integer
# result is result with last digit, converted to a string, prepended to it
# when integer is 0, break out of the loop
# return result
