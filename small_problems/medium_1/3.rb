=begin

input: number
output: number

rules:
  - rotate first digit, then second, third... all the way to num.size - 1

algorithm:
  - the rotate rightmost digits method takes a number input and an nth input and puts that -nth digit to the end
  - num.digits.size.downto(2)
  - - size

  - pass
  - 352817
  -


=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, nth)
  digits = num.digits.reverse
  digits[-nth..-1] = rotate_array(digits[-nth..-1])
  digits.join.to_i
end

def max_rotation(num)
  num.to_s.size.downto(2) do |count|
    num = rotate_rightmost_digits(num, count)
  end
  num
end




max_rotation(735291)
p max_rotation(731)
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845


# this gave me a bit of trouble and took just over 20 minutes
# do it again
# did not do FEX


=begin

input: number
output: number

rules:
  - rotate first digit
  - rotate second digit
  - rotate third digit... etc
  - do this number.size - 1 times
  - return number

algorithm:
  - number.digits.size.downto(2) idx
    - pass number and idx to rotate_rightmost_digits method
      - reassign number to return value
  - return number

=end

# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end
#
# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

# def max_rotation(number)
#   (number.digits.size).downto(2) do |count|
#     number = rotate_rightmost_digits(number, count)
#   end
#   number
# end



# input: integer
# output: integer
#
# rules:
#   - with 735291
#   - rotate the first digit to the end
#   - rotate the second digit to the end
#   - third digit to the end
#   - fourth digit to the end
#   - fifth digit to the end
#
# algorithm
#   - convert integer to array
#   - array size -1 times
#   - max rotation method
#     - iterate on array (array size - 1 times)
#       - slice the array from n to last element
#       - reassign that return value to the return value of passing sliced array to rotate_array method
  # - join array, convert to integer, and return intger
# def rotate_array(arr)
#   arr[1..-1] + [arr[0]]
# end

# without using rotate_rightmost_digits (READ DIRECTIONS!)
# def max_rotation(number)
#   all_digits = number.to_s.chars
#   (all_digits.size - 1).times do |idx|
#     all_digits[idx..-1] = rotate_array(all_digits[idx..-1])
#   end
#   all_digits.join.to_i
# end

# def rotate_rightmost_digits(number, n)
#   all_digits = number.to_s.chars
#   all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
#   all_digits.join.to_i
# end

# array.size times do this:
# pass the number to the rotate_rightmost_digits method
# numer = the return value of calling rrd method
#
# arr.size.times call the rotate_rightmost_digits method
# 6 times
# n = -6, -5, -4, -3, -2, -1

# def max_rotation(number)
#     number.digits.size.downto(1) do |idx_start|
#       number = rotate_rightmost_digits(number, idx_start)
#     end
#     number
# end
# THIS PROBABLY TOOK ME A COUPLE OF HOURS BUT I FIGURED IT OUT!
# AND, MY SOLUTION IS BASICALLY IDENTICAL TO THEIRS!

# algorithm
#   - pass 735291, 1 to rightmost method
    # - pass the the returned number, 2 to the right most method
    # - all the way up to the number of digits in the number
#   - 352917
#   - 329175
#   - iterate on array (array size times)
#   - pass array[idx, -1] to rotate_rightmost_digits method


# FEX
#   - number of digits in the number down to 1
#   - sub arr is arr[-count.. -1]
#   - rotate sub arr
#   - reassign arr to
#   - YES the three part approach makes it much easier!
#
#   - in order to deal with leading zeros you need to do some sort of formatting
