=begin

input: array and search value
output: boolean

rules:
  - return true if value is in array
  - false if not in array
  - can't use include?

algorithm:
  - subtract value in array from input array
  - if result == original array return false

=end

def include?(arr, value)
  arr - [value] != arr
end



# input: array and a search value
# output: true or false
#
# rules:
#     Explicit requirments
#       - return true if search value is in the array
#       - return false if search value is not in the array
#
# new algorithm:
    # - count instances of search term in array
    # - if greater then 0 return true
    # - else return false

# old algorithm:
#   - push search_value to input_array
#   - if count search_value returns a number greater than 1
#       - return true
#   - else return false

# def include?(array, search)
#   array.count(search) > 0
# end

# one of theirs:
# def include?(array, value)
#   !!array.find_index(value)
# end
#
# p include?([1,2,3,4,5], 7)


# test cases:
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
