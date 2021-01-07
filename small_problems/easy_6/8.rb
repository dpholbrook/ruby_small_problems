=begin

input: array
output: number

rules:
  - array contains one duplicate value
  - return the dupe

algorithm:
  - iterate on array
  - for each value see how many times it occurs
  - return the value that returns 2

=end

# round 2
# def find_dup(arr)
#   arr.each { |e| return e if arr.count(e) == 2 }
# end
#
# def find_dup(array)
#   array.find { |element| array.count(element) == 2 }
# end

# input: array
# output: array element
#
# rules:
#   - Explicit requirements:
#     - one value in the unordered array occurs twice
#     - find that value and return it
#
# questions: can i assume that the elements in the array will be numbers?
#
# algorithm:
# - initialize dup_arr
# - iterate on arr
#   - if dup arr has current element, return current element
#   - else push current element to dup_arr

# to find all dupes, not just the first instance:

# def find_dup(arr)
#   check = []
#   dupe = []
#   arr.each { |e| check.include?(e) ? dupe << e : check << e }
#   dupe
# end

p find_dup([1, 5, 3, 1, 3])

# test cases:
p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
p find_dup([1, 5, 3, 1])
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58, 58, 49])
