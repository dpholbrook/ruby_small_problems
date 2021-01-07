=begin

input: two arrays
output: one array

rules:
  - output array contains the product of each element from the same index
  - arrays have same number of elements

algorithm:
  - zip tow arrays together
  - iterate on sub arrays, multiply them with inject


  - iterate on arr1 with index
  - multiply two elements together pushing them to new array

=end

# def multiply_list(arr1, arr2)
#   zipped = arr1.zip(arr2)
#   zipped.map { |sub_arr| sub_arr.inject(:*) }
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |sub_arr| sub_arr.inject(:*) }
end



# def multiply_list(arr1, arr2)
#   product = []
#   arr1.each_with_index { |e, idx| product << (e * arr2[idx]) }
#   product
# end

# input: two arrays
# output: one array
#
# rules:
#   - assume input arrays contain a list of only numbers and are equal in size
#   - output array is the product of each pair of numbers from the input arrays with the same index
#
# algorithm:
#   - idx = 0
#   - product = []
#   - enter loop
#     - product << (arr_1[idx] * arr_2[idx])
#     - end loop
#   - return product

# def multiply_list(arr_1, arr_2)
#   products = []
#   arr_1.each_index do |idx|
#     products << (arr_1[idx] * arr_2[idx])
#   end
#   products
# end

# def multiply_list(arr_1, arr_2)
#   idx = 0
#   product = []
#
#   loop do
#     break if idx == arr_1.size
#     product << (arr_1[idx] * arr_2[idx])
#     idx += 1
#   end
#   product
# end

# FEX
# def multiply_list(arr_1, arr_2)
#   arr_1.zip(arr_2).map { |arr| arr.inject(:*) }
# end

p multiply_list([3, 5, 7], [9, 10, 11])

#   test cases:
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
