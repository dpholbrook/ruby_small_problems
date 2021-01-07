# put first element to the end of the array
# don't modify original array
# return new array

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# didn't struggle with this but its good to do it whith their solution which is super simple but hard to think of

=begin

input: array
output: new array

rules:
  - put fist element to the end of new array

algorithm:
  - initialize result array
  - take first element and append to the end

  - split string into array of chars

=end

# def rotate_array(arr)
#   result = arr.dup
#   result << result.shift
# end

# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end
#
# def rotate_string(str)
#   rotate_array(str.chars).join
# end
#
# def rotate_num(num)
#   rotate_array(num.digits.reverse).join.to_i
# end


# p rotate_array([7, 3, 5, 2, 9, 1])

# input: array
# output: array
#
# rules:
#   - rotate the array
#   - move the first element to the end
#   - do not modify the original array
#   - do not use rotate methods
#
# algorithm:
#   - make new array with map
#   - unshift first element
#   - append that element to the end of the array
#   - return that array
#

# def rotate_array(arr)
#   new_arr = arr.map { |e| e }
#   new_arr << new_arr.shift
#   new_arr
# end

#their solution:
# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end

#FEX
# algorithm
#   - break string into array of chars, rotate it, and then join it
#   - break integer into array of digits, rotate it, join it, then convert to integer

# def rotate_string(str)
#   rotate_array(str.chars).join
# end
#
# def display_string_rotation(str)
#   str.size.times do
#     str = rotate_string(str)
#     puts str
#   end
# end
#
# def rotate_integer(int)
#   rotate_array(int.digits.reverse).join.to_i
# end



#p rotate_integer(23598732)

# display_string_rotation('this is a string')
#
# p rotate_string('string')
# p rotate_string('this is a string')
#
#
# p rotate_array([7, 3, 5, 2, 9, 1])
#
# # test cases:
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
