# input: array
# output: array
#
# rules:
#   - return every other element
#   - 1, 3, 5 element
#
# algorithm:
#   - initialize an empty array
#   - push even indexes to array
#   - return array

# def oddities(arr)
#   odds = []
#   arr.each_with_index { |num, idx| odds << num if idx.even? }
#   odds
# end

# alex:

def oddities(arr)
  arr.select {|x| arr.index(x).even?}
end

p oddities([2, 3, 4, 5, 6])
p oddities([2, 2, 2, 2, 3, 4, 5, 6])

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []





#===============


# def oddities(array)
#
#   odd_elements = []
#
#   array.each_index do |x|
#     odd_elements << array[x] if x.even?
#   end
#
#   odd_elements
#
# end


p oddities([1, 2, 3, 4, 5, 6, 7, 8])
p oddities([1, 2, 3, 4, 5, 6, 7, 8]) == [1, 3, 5, 7]

# _________________________
#
# def evensies(array)
#
#   even_elements = []
#
#   1.upto(array.length - 1) do |x|
#     even_elements << array[x] if x.odd?
#   end
#
#   even_elements
#
# end
#
# p evensies([1, 2, 3, 4, 5, 6, 7])

# ________________
#
# def evensies(array)
#
#   even_elements = []
#
#   index = 1
#   while index < array.length
#     even_elements << array[index]
#     index += 2
#   end
#
#   even_elements
#
# end
#
# p evensies([1, 2, 3, 4, 5, 6, 7])


#_____________________________



# def oddities(array)
#   odd_elements = []
#
#   index = 0
#   while index < array.length
#     odd_elements.push(array[index]) if index % 2 == 0
#     index += 1
#   end
#
#   odd_elements
# end
#
#
# p oddities([1, 2, 3, 4, 5])
# p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
# p oddities([1, 2, 3, 4, 5, 6])
# p oddities(['abc', 'def']) == ['abc']
# p oddities([123]) == [123]
# p oddities([]) == []



# initialize empty array
#
# index equals 0
# while index is less than lenght of array
#   if the remainder of the index divided by 2 equals 0
#     push to empty array
#     index equals index plus one
#
#
#
#
# index = 0
# while index < array.length
#
# end
