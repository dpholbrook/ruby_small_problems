# completed with each, each with object, and inject in about 12 minutes.

=begin
input: array
output: number

rules:
  - initialize sum variable
  - initialize sums array
  - iterate on array
  - increment sum variable with each iteration
  - push sum to array
  - sum array and return it

=end

# def sum_of_sums(arr)
#   sum = 0
#   sums = []
#
#   arr.each do |num|
#     sum += num
#     sums << sum
#   end
#   sums.reduce(:+)
# end

def sum_of_sums(arr)
  sum = 0
  arr.each_with_object([]) { |num, sum_arr| sum_arr << sum += num }.inject(:+)
end

# def sum_of_sums(arr)
#   sums = []
#   arr.inject(0) do |sum, num|
#     sums << sum += num
#     sum
#   end
#   sums.inject(:+)
# end

# input: array of numbers
# output: integer
#
# rules:
#   - integer is the sum of sums of each leading subsequence for the array
#   - array always contains at least one number
#
# algorithm:
#   - counter = 0
#   - sum = 0
#   - enter loop
#     - break if counter >= arr.size
#     - sum += arr[counter]
#     - sums_arr << sum
#     - counter += 1
#   - end loop

#my solution:
# def sum_of_sums(arr)
#   sums = []
#   counter = 0
#   sum = 0
#
#   loop do
#     break if counter >= arr.size
#     sum += arr[counter]
#     sums << sum
#     counter += 1
#   end
#   sums.inject(:+)
# end

# not so flash of their solution:
# def sum_of_sums(arr)
#   sum = 0
#
#   1.upto(arr.size) do |count|
#     sum += arr.slice(0, count).reduce(:+)
#   end
#   sum
# end

p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3])


# test cases:
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
