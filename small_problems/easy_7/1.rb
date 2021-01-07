=begin

input: two arrays
output: one array

rules:
  - combine the two arrays alternating the elements
  - loop through each array pushing each element to new array

=end

#mine:
# def interleave(arr1, arr2)
#   idx = 0
#   result = []
#   loop do
#     result << arr1[idx] << arr2[idx]
#     idx += 1
#     break if idx == arr1.size
#   end
#   result
# end

#flash of theirs:
# def interleave(arr1, arr2)
#   result = []
#
#   arr1.each_with_index do |e, idx|
#     result << e << arr2[idx]
#   end
#
#   result
# end


# input: two arrays
# output: new array
#
# rules:
#   Explicit requirements:
#     - alternating elements from input arrays
#     - assume arrays have same number of elements
#     - assume arrays are not empty
#
# Algorithm
# initialize interleaved to empty array
# counter = 0
# enter loop
#   break if counter == array size
#   push first element of first array to new array
#   push first element of second array to new array
#   increment counter by 1
# end loop
# return interleaved array

# my solution:
# def interleave(arr_1, arr_2)
#
#   interleaved = []
#
#   counter = 0
#   loop do
#     break if counter == arr_1.size
#     interleaved << arr_1[counter]
#     interleaved << arr_2[counter]
#     counter += 1
#   end
#   interleaved
# end

# their soultion:
# def interleave(arr_1, arr_2)
#   result = []
#
#   arr_1.each_with_index do |e, idx|
#     result << e << arr_2[idx]
#   end
#   result
# end

# using interleave
# def interleave(arr_1, arr_2)
#   arr_1.zip(arr_2).flatten
# end

p interleave([1, 2, 3], ['a', 'b', 'c'])

# test case:
p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
