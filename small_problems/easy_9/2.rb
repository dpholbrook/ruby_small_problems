# input: number
# output: number
#
# rules:
#   - double number is even digits and left == right
#   - return num * 2 unless double number, in that case return num
#
# algorithm:
#   - double number?
#     - num.digits.size.even? && double_number?(num)
#       - num.to_s[0, half] == num.to_s[half, half]
#     - retern num
#   - else return num * 2

# def double_number?(num)
#   half = num.digits.size / 2
#   num.digits.size.even? && num.to_s[0, half] == num.to_s[half, half]
# end
#
# def twice(num)
#   double_number?(num) ? num : num * 2
# end



# this one wasn't bad but could be good practice

=begin

input: number
output: number

rules:
  - return num * 2
  - unless num is double number
    - even digits
    - left side and right side are the same
  - return double number

algorithm:
  - double_number?
    - num digit even?
    - first half equals second half
      - [0, 3] == [3, -1]

=end

# def double_number?(num)
#   num_size = num.to_s.size
#   half = num_size / 2
#   left_side = num.to_s[0, half]
#   right_side = num.to_s[half, half]
#   num_size.even? && left_side == right_side
# end
#
# def twice(num)
#   return num if double_number?(num)
#   num * 2
# end

# p twice(444) == 888
p twice(103103) == 103103
p twice(334433) == 668866
# input: number
# output: number
#
# rules:
#   - return input number * 2 unless the input is a double number
#   - if input is a double number, return that number
#   - double number is
#     - even number of digits
#     - left is the same as right
#
#
# algorithm:
#   - check to see if input is a double number
#     - does input have an even number of digits?
#       - if so, is the first the same as the second half?
#         - 3333
#           - num[0..1] == num[2..3]
#           - num[0,2] == num[2,2]
#         - 103103
#           - num[0..2] == num[3..5]
#           - num[0,3] == num[3,3]
#
#       - use size to find number of digits
#       - divide number of digits by two to find half the digits
#       - convert number into string
#       - use slice to compare two numbers
#         - num1[0,half] == num2[half,half]
#       - if both conditions are true
#           - return input
#     -  otherwise return the number doubled
#
# test cases:


# def twice(num)
#     half = num.to_s.size / 2
#     if num.to_s.size.even? && num.to_s[0, half] == num.to_s[half, half]
#       num
#     else
#       num * 2
#     end
# end



p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
