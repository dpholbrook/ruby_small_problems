=begin

input: number
output: array

rules:
  - array is integers between 1 and num
  - input is valid integer greater than 0

algorithm:
  - iterate on range with map


  FEX
    - if num is negative
      - -1 downto num to array

=end

# def sequence(num)
#   (1..num).map { |number| number }
# end
#
# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# # input: integer
# # output: array
# #
# # rules:
# #   - return an array that contains elements 1 up to int
# #   - arg will always be an integer and greater than 0
#
# algorithm
#   - initialize empty array
#   - iterate integer times (1.upto(int))
#   - push count for current interation to the array
#   - return the array
#

# def sequence(int)
#   numbers = []
#   1.upto(int) { |count| numbers << count }
#   numbers
# end

# test cases:
# p sequence(5)
# p sequence(5) == [1, 2, 3, 4, 5]
# p sequence(3) == [1, 2, 3]
# p sequence(1) == [1]

# FEX
#
# algorithm
    # - if int is negative, make it positive
#   - return range array
#   - if int negative
#     - create new array with negative integers (map)

# def sequence(int)
#     arr = (1..int.abs).to_a
#     return arr if int >= 0
#     arr.map { |num| -num}
# end

# test cases:
p sequence(-5)
p sequence(5)
