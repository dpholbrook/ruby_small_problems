=begin

input: string
output: array of substrings

rules:
  - substrings start at beginning of string
  - order array from shortest to longest substring

algorithm:
  - inialize count to 1
  - initialize substrings array
  - use loop to iterate through string
  - slice from 0, taking count letters
  - push to array
  - increment the count
  - break when count > string.size

=end

def substrings_at_start(str)
  substrings = []
  idx = 0

  loop do
    substrings << str[0..idx]
    idx += 1
    break if idx >= str.size
  end
  substrings
end

# input: string
# output: array
#
# rules:
#   - array elements are substrings that start at the beginning of the original string
#   - arranged in order from shortest to longest
#
# algorithm:
#   - initialize empty array
#   - select first element and push to array
#   - select first and second and push to array
#   - repeat up to string size

# def substrings_at_start(str)
#   substrings = []
#
#   0.upto(str.size - 1) do |index|
#     substrings << str.slice(0..index)
#   end
#   substrings
# end

# test cases:
p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
