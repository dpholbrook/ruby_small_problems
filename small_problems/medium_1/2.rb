# put -nth digit to end of array
# reassign [-n..-1] to rotated version

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, nth)
  digits = num.digits.reverse
  digits[-nth..-1] = rotate_array(digits[-nth..-1])
  digits.join.to_i
end


# I was able to do this without trouble but, their solution is worth trying to replicate.

=begin

input: two numbers
output: one number

rules:
  - move -nth digit to the end of the number
  - n is positive

algorithm:
  - split number into array of digits
  - pass last n digits to rotate_array method
    - add the array return value to the first part of the array

=end



# # my solution:
# def rotate_rightmost_digits(num, n)
#   digits = num.digits.reverse
#   (digits[0...-n] + rotate_array(digits[-n..-1])).join.to_i
# end
#
# # their solution:
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

# Here, a slice of the array is reassigned to the rotated version of that slice
# What is interesting is that this is reassignment and is mutating
# So, when the original array is retured, it has been mutated into what we want it to be


rotate_rightmost_digits(735291, 2) == 735219

# input: number
# output: number
#
# rules:
#   - rotate the last n digits
#   - 3 for example: rotate the third to last digit to the end
#   - assume n is always positive
#   - use rotate_array method
#   - 1 returns the original number
#
# algorithm:
#   - use rotate array method
#     - take the array except for the first element and add the first element to the end
#   - break number into an array of digits
#   - pass a sub array of digits to the rotate array method
#     - arr[-num, num]
#     - return value is rotated appropriately
#   - add first part of array to second part
#     - arr[1..-num - 1] + rotated portion of array
#   - join the array
#   - convert string to integer

# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end

# my solution:
# def rotate_rightmost_digits(digits, num)
#   digits = (digits.digits.reverse)
#   rotated_rightmost_digits = rotate_array(digits[-num, num])
#   first_digits = digits[0..-num -1]
#   (first_digits + rotated_rightmost_digits).join.to_i
# end

# flash of their solution:
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1]) # this is like a multiple element assignment using [] method
#   all_digits.join.to_i
# end

# there is an intersting distinction between their solution and mine
# i thought that I needed to:
# #   - pass a sub array of digits to the rotate array method
# #     - arr[-num, num]
# #     - return value is rotated appropriately
# #   - add first part of array to second part
#
# but all i had to do was
#   - use slice to return the sub array that needs to be rotated
#   - pass that sub array to the rotate_array method
#   - reassign the original sub array to the rotated sub array

# the key takeaway here is that you can use slice to reassign a whole portion (many elements) of an array at once

# test cases:
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
