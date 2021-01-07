=begin

input: two numbers
output: array

rules:
  - first num is count
  - second is starting number in sequence
  - array contains count elements
  - elements are multiples of starting number
  - count is 0 or greater
  - return empty array if count is 0

algorithm:
  - sum = num2
  - count times
    - push sum to array
    - sum += num2
  - return the array

=end

def sequence(num1, num2)
  count = num2
  result = []

  num1.times do
    result << count
    count += num2
  end
  result
end

# def sequence(num1, num2)
#   (1..num1).map { |idx| idx * num2 }
# end

# input: two integers
# output: array
#
# rules:
#   - first integer is a count
#     - array contains count elements
#     - count will always be > 0
#
#   - second integer is the first number of a sequence
#     - each element is a multiple of the starting number
#     - starting number can be any integer value
#     - if it is 0, return an empty array
#
# algorithm
#   - initialize an empty array
#   - iterate count times (1.upto(count))
#     - with each iteration multiply starting number by the iteration number
#     - push value to emtpy array
      # - return the array

# def sequence(count, interval)
#   arr = []
#   1.upto(count) do |count|
#     arr << (interval * count)
#   end
#   arr
# end

# their solution:

# def sequence(count, start_num)
#   (1..count).map { |e| start_num * e }
# end

p sequence(5, 1)

# test cases:
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
