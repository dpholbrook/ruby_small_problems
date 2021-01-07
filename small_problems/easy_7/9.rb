# def multiply_all_pairs(arr1, arr2)
#   arr1.product(arr2).map { |num1, num2| num1 * num2 }.sort
# end

# iterate on first array
#   - for each element
#     - iterate on second array and multiply current element in first array by current element in second array




def multiply_all_pairs(arr1, arr2)
  result = arr1.map do |num1|
    arr2.map do |num2|
      num1 * num2
    end
  end
  result.flatten.sort
end


# solved with no problem
# good look at simple double iterator
# interesting use of map by them with double parameter for sub arrs with two values

=begin

input: two arrays
output: one array

rules:
  - return new array
  - contains product of every pair of numbers between each array
  - sorted by increasing value

algorithm:
  - iterate on first array
    - for each number
      - iterate on second array
        - multiply current number from arr1 by current number in arr2
  -return new array

=end

# def multiply_all_pairs(arr1, arr2)
#   product =
#   arr1.map do |num1|
#     arr2.map do |num2|
#       num1 * num2
#     end
#   end
#   product.flatten.sort
# end

# def multiply_all_pairs(arr1, arr2)
#   arr1.product(arr2).map { |a, b| a * b }.sort
# end



# input: two arrays
# output: new array
#
# rules:
#   - each input array is a list of numbers
#   - new array is product of every pair of numbers
#   - new array is sorted by increasing numbers
#
# algorithm:
#   idx_1 = 0
#   idx_2 = 0
#   initialize empty array to multiples
#   - enter loop
#     - break if idx_1 is greater than array_1 size
#     -enter inner loop
#       - break if idx_2 is greater than array_2 size
#       - multiply number in array_1 at idx_1 by number in array_2 at idx_2
#       - push result to multiples array
#       - increment idx_2 by one
#     - end inner loop
#     - idx_2 = 0
#     - increment idx_1 by one
#   - end loop
# - return sorted array

# mine with loops:
# def multiply_all_pairs(arr_1, arr_2)
#
#   idx_1 = 0
#   idx_2 = 0
#
#   multiples = []
#
#   loop do
#     break if idx_1 >= arr_1.size
#     loop do
#       break if idx_2 >= arr_2.size
#       multiples << (arr_1[idx_1] * arr_2[idx_2])
#       idx_2 += 1
#     end
#     idx_2 = 0
#     idx_1 += 1
#   end
# multiples.sort
# end

# flash of theirs with iterators:
# def multiply_all_pairs(arr_1, arr_2)
#   multiplied = []
#
#   arr_1.each do |num_1|
#     arr_2.each do |num_2|
#       multiplied << (num_1 * num_2)
#     end
#   end
#
#   multiplied.sort
# end

# super sicky slicky solution:

# def multiply_all_pairs(array_1, array_2)
#   array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
# end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
