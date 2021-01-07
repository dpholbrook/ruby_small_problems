=begin

input: array
output: new array

rules:
  - output is input array reversed
  - dont use reverse methods
  - don't mutate the input array, return a new one

algorithm:
  - initialize new array
  - iterate on input array
  - unshift each element to new array
=end

# def reverse(arr)
#   arr.each_with_object([]) { |e, arr| arr.unshift(e) }
# end

# def reverse(arr)
#   arr.inject([]) { |reversed_arr, e| reversed_arr.unshift(e) }
# end





# further exploration
# def reverse(array)
#   array.each_with_object([]) { | i, reversed | reversed.unshift(i) }
# end



# input: array
# output: array
#
# rules:
#   Explicit requirements:
#     - return a new array with the elements in the original array reversed
#     - don't modify the original array
#     - can't use reverse or reverse! or your method
#
# Algorithm
# initialize reversed to empty array
# first = 0
# last = -1
# enter loop
#   - array size times
#   - assign last element from original array to first element of new array
#   - increment first by one and decrease last by 1
#   - loop ends
# return reversed



# def reverse(array)
#   reversed = []
#
#   first = 0
#   last = -1
#   array.size.times do
#     reversed[first] = array[last]
#     first += 1
#     last -= 1
#   end
#
# reversed
# end

# test cases:
p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true
