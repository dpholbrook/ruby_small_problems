# input: array
# output: array
#
# rules:
#   - each element in the output array is the running total of the input array
#
# algorithm:
#   - initialize total variable = 0
#   - iterate with map
#     - total += current element

# def running_total(arr)
#   total = 0
#   arr.map { |num| total += num }
# end

# def running_total(arr)
#   total = 0
#   arr.each_with_object([]) { |num, obj| obj << total += num }
# end

# def running_total(arr)
#   total = []
#   arr.reduce(0) do |sum, num|
#     total << sum + num
#     sum + num
#   end
#   total
# end

# def running_total(arr)
#   total = []
#   arr.reduce do |sum, num|
#     total << sum + num
#     sum + num
#   end
#   total
# end














def running_total(array)
  totals = []
  array.inject(0) do |sum, num|
    totals << (sum += num)
    sum
  end
  totals
end

p running_total([1, 2, 3])

# def running_total(array)
#   total = 0
#   array.each_with_object([]) { |old, newb| newb << total += old }
# end
# seems to be making a new array and pushing total += old to the new array


# def running_total(array)
#   total = 0
#   array.map { |element| total += element }
# end

# - Method that take an array of numbers.
# - Returns array with same number of elements.
# - Each element has running total from array.
#
# Test Cases:
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
#
# Algorithm
# total = 0
# total is total plus first current element value
# element total is total plus current element value
#
# second element total is total plus second element
