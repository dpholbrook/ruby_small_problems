# input: number
# output: array
#
# rules: turn number into array manually
#
# algorithm:
  # - init new arr
#   - num, remainder = num.divmod(10)
#   - unshift remainder to array
#   - do that until the number is zero


def digit_list(num)
  result = []

  until num.zero?
    num, remainder = num.divmod(10)
    result.unshift(remainder)
  end
  result
end


# def digit_list(num)
#   num.digits.reverse
# end

# algorithm:
#   - split into digits and reverse

# def digit_list(num)
#   num.digits.reverse
# end

# algorithm for their solution:
#   - initialize an empty array
#   - enter loop
#   - take the tens place of the number and add it to the beginning of the array
#   - exit loop when there are no more tens places left

# def digit_list(number)
#   digits = []
#
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break if number == 0
#   end
#
#   digits
# end


p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]




# def digit_list(num)
#   num.to_s.chars.map(&:to_i)
# end

# Algorithm
# - define method with one parameter for a positive integer
# - convert argument to a string
# - split the string into array of sting characters
# - iterate on that array to return an array of integers

# my solution:

# def digit_list(num)
#   a = num.to_s.split("")
#   a.map { |i| i.to_i }
# end

# theirs:

# def digit_list(num)
#   digits = []
#   loop do
#     num, remainder = num.divmod(10)
#     digits.unshift(remainder)
#     break if num == 0
#   end
#   digits
# end



# def digit_list(num)
#   num.to_s.chars.map(&:to_i)
# end
#
#
#


# p digit_list(3452083)
# p digit_list(0)
# p digit_list(- 3452083)



# UTP
# Input
# - positive integer
#   - check that it is a positive integer?
# Output
# - no output
# - returns an array of digits in that integer
#
# digit_list(145) => [1, 4, 5]
# digit_list("hi") => please enter positive integer
# digit_list(-4) => please enter positive integer
# digit_list([1,2]) => please enter positive integer
# digit_list(0) => please enter positive integer
#
# Data Structure
# - input is a positive integer
# - convert to string
# - output is an array
#
