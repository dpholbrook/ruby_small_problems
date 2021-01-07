=begin
input: array
output: string with number

rules:
  - input is array of integers
  - multiply all numbers together
  - divide result by array size
  - print result rounded to three decimal places
  - array is non empty

algorithm:
  - multiply all values in array (inject)
  - divide result by array.size
  - format number to 3 decimals
  - print string

=end


def show_multiplicative_average(arr)
  average = arr.inject(:*) / arr.size.to_f
  puts format('%.3f', average)
end


# input: array of integers
# output: float
#
# rules:
#   - multiply the integers in the array
#   - divide the result by the number of elements in the array
#   - round the result to 3 decimal places
#   - assume array is non empty
#
# algorithm:
# multiply elements in the array
# divide return value to_f by array.size
# format float to have three decimal places

# def show_multiplicative_average(arr)
#   puts format('%.3f', (arr.inject(:*).to_f) / arr.size)
# end

# test cases:
p show_multiplicative_average([3, 5])
# The result is 7.500

p show_multiplicative_average([6])
# The result is 6.000

p show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
