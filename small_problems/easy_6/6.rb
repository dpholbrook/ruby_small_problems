=begin

input: two arrays
output: array

rules:
  - output is all values from input arrays with no duplicates, even if there are dupes in the inputs

algorithm:
  - sum arrays
  - return uniqe values
  - sort array

=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

#==============

# input: two arrays
# output: one array
#
# rules:
#     Explicit requirements:
#       - merged array contains all the values of the two arrays
#       - merged array does not contain duplicate values, even if original array did
#

# questions: Does merged array have to be sorted?
#
# Algorithm
# - initialize merged to empty array
# - iterate through first array
#   - if merged does not contain current value, push current value to merged
# - repeat iteration for second array
# - sort merged array
# - return merged array

# original solution:
# def merge(arr_1, arr_2)
#   merged = []
#
#   arr_1.each { |e| merged << e unless merged.include?(e) }
#   arr_2.each { |e| merged << e unless merged.include?(e) }
#
#   merged.sort
# end

# shorter solution:
# def merge(arr_1, arr_2)
#   (arr_1 + arr_2).uniq.sort
# end

#their solution:
# def merge(arr_1, arr_2)
#   arr_1 | arr_2
# end

# test cases:
p merge([1, 3, 5], [3, 6, 9])
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
