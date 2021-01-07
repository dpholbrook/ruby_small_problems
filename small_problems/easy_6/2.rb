=begin

input: array of strings
output: array of strings

rules:
  - return same array or new one?
  - return array with vowels removed

algorithm:
  - iterate on string and delete vowels from each string
  - return new string

=end

def remove_vowels(arr)
  arr.map { |string| string.delete('aeiouAEIOU') }
end





p remove_vowels(%w(green YELLOW black white))

#=============================


# input: array of strings
# output: array of strings
#
# rules:
#     Explicit requirements:
#       - vowels (a, e, i, o, u) are removed from the strings returned
#       - otherwise, strings are identical
#
# questions:
#   - return same array object or different?
#
# Algorithm
#   - iterate through array of strings
#   - delete 'aeiou' from each string
#   - return new array of strings without 'aeiou'

# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end


# test cases:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))
