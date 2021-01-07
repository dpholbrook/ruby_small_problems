=begin

input: array
output: array

rules:
  - input has fruit and quantity
  - output is correct number of each fruit
  - new array object?

algorithm:
  - initialize new array
  - iterate on sub arrays
    - sub arr number times push string to result array
  - return result array

=end

# def buy_fruit(arr)
#   result = []
#   arr.each do |sub_arr|
#     sub_arr[1].times { result << sub_arr[0] }
#   end
#   result
# end

# def buy_fruit(arr)
#   arr.each_with_object([]) do |sub_arr, result|
#     sub_arr[1].times { result << sub_arr[0] }
#   end
# end
#
# def buy_fruit(arr)
#   arr.map { |sub_arr| [sub_arr[0]] * sub_arr[1] }.flatten
# end

def buy_fruit(arr)
  arr.map { |fruit, times| [fruit] * times }.flatten
end


  p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
# input: array
# output: array
#
# rules:
#   - convert nested input array to array with fruit string quantity number of times
#
# algorithm
#   - initialize empty array
#   - iterate on input array (each)
#     - push to empty array
#       - the string at index 0 in the sub arr
#       - do that index 1 times
#   - return array
#
#

# def buy_fruit arr
#   result = []
#   arr.each do |a,b|
#     b.times { result << a }
#   end
#   result
# end
#
# def buy_fruit(list)
#   fruit = []
#   list.each do |sub_arr|
#     sub_arr[1].times { fruit << sub_arr[0] }
#   end
#   fruit
# end
# test case:
  p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
