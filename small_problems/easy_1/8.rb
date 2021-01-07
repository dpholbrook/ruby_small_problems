# input: array
# output: integer
#
# rules:
#   - return the average of the numbers in the array
#   - array will not be empty and will have potitive integers
#
# algorithm:
#   - sum the array and divide by arr.size

# def average(arr)
#   (arr.sum)/arr.size
# end

# def average(arr)
#   arr.inject(:+)/arr.size
# end

# def average(arr)
#   sum = arr.inject { |sum, num| sum + num }
#   sum / arr.size
# end

# ===================================

#their solution:

# def average(array)
#   float_array = array.map { |num| num.to_f}
#   sum = float_array.reduce { |sum, num| sum + num }
#   sum / float_array.count
# end

p average [1, 5, 7]
p average [ 1, 2, 3.7, 4.8, 11.9]

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

# another solution:
# def average(array)
#   array.sum / array.length
# end
#
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# my solution:
# def average(array)
#   total = 0
#   array.each do |num|
#     total += num
#   end
#   total / array.length
# end
#
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40


# ALGORITHM
# - iterate over array
#   - variable = array[iteration] += array[iteration + 1]
# - variable / array.length
#
# UTP
# - method that takes one argument
#
# INPUT
# - array of integers
#
# OUTPUT
# - returns average of integers in the array
#
# RULES
# - array will never be empty
# - integers will always be postive
#
# TEST CASES return true
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40
#
# DATA STRUCTURE
# - input array of integers
# - output one ingeger
