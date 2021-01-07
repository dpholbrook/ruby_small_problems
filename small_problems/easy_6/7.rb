=begin

input: array
output: array with two arrays in it

rules:
  - first nested array is first half of input array
  - second nested array is second half of input array
  - if input has odd number of elements, put middle element in first half

algorithm:
  - divide float of array size by two and round it to get first half
    - result is size of first arr
    - size of second arr is input arr size - first half size
    - use slice to return two nested array

=end


# def halvsies(arr)
#   first_half = (arr.size.to_f / 2).round
#   second_half = arr.size - first_half
#   [arr[0, first_half], arr[-second_half, second_half]]
# end

# input: array
# output: nested array
#
# rules:
#     Explicit requirements:
#       - the nested arrays contain the first half of the original array and the second half
#       - if there is an odd number of elements, the middle element goes in the first half
#
#     Implicit requirements:
#       - even an empty array is split into two nested empty arrays
#       - an array with only one element is split into two arrays, the second is empty
#
# questions:
#   - return the same array object or a new one?
#
# Algorithm
#   - initialize split_array = [[],[]]
#   - determine number of elements in each array
#     - first_half, remainder = arr.size.divmod(2)
#     - second_half = first_half
#     - first_half += remainder
#   - counter = 0
#   - enter loop
#     - break if counter >= first_half
#     - split_array[0] << arr[counter]
#     - counter += 1
#   - end loop
#   - enter loop
#     - break if counter >= arr.size
#     - split_array[1] << arr[counter]
#     - counter += 1
#   - end loop
#   return split_array

# my solution
# def halvsies(arr)
#   split_array = [[],[]]
#
#   second_half, remainder = arr.size.divmod(2)
#   first_half = second_half + remainder
#
#   counter = 0
#   loop do
#     break if counter >= first_half
#     split_array[0] << arr[counter]
#     counter += 1
#   end
#
#   loop do
#     break if counter >= arr.size
#     split_array[1] << arr[counter]
#     counter += 1
#   end
#
#   split_array
# end
#
# p halvsies([1, 2, 3, 4])

# their solution
# def halvsies(array)
#   first_half = array[0, (array.size / 2.0).ceil]
#   second_half = array[first_half.size, array.size - first_half.size]
#   [first_half, second_half]
# end

p halvsies([1, 5, 2, 4, 3])
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
