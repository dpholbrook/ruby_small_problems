# def reverse!(arr)
#   first = 0
#   last = -1
#
#   (arr.size/2).times do |_|
#     arr[first], arr[last] = arr[last], arr[first]
#     first += 1
#     last -= 1
#   end
#   arr
# end

# this is an easy problem and i botched it... unacceptable
# do it again in 5 minutes or less

=begin
input: array
output: array

rules:
  - return the same array (mutate the input)
  - reverse elements in array
  - no reverse methods

algorithm:
  - initialize fist to 0
  - last to -1
  - reassigne first element to last and last to first
  - incriment first
  - decriment last
  - when array size / 2 == first + 1, break
=end

# def reverse!(arr)
#   first = 0
#   last = -1
#   loop do
#     arr[first], arr[last] = arr[last], arr[first]
#     break if (arr.size / 2) == (first + 1)
#     first += 1
#     last -= 1
#   end
#   arr
# end

#====================

# input: array
# output: array
#
# rules:
#     Explicit requirements:
#       - revers the elements of the array
#       - return the same array object
#       - you can not use Array#reverse or Array#reverse!
#
# Algorithm
# remove last element from array and push it to the front of the array
# do this array.size - 1 times

# def reverse!(list)
#   first = 0
#   last = -1
#   (list.size / 2).times do
#     list[first], list[last] = list[last], list[first]
#     first += 1
#     last -= 1
#   end
#   list
# end

list = [1,2,3,4]
p reverse!(list)



# test cases:
p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

p list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

p list = []
p reverse!(list) == []
p list == []
