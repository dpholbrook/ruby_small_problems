=begin

input: string
output: string

rules:
  - return middle char
  - two chars if even
  - one char if odd
  - input is non empty

algorithm:
  - divide string size by 2.0
  - if even, take chars at result and result - 1
  - if odd take char at result.ceil

=end

def center_of(str)
  idx = str.size / 2.0
  if str.size.even?
    str[idx - 1, 2]
  elsif str.size.odd?
    str[idx]
  end
end


p center_of('Launch')

# input: non-empty string
# output: middle charachters or character
#
# rules:
#   - if string is odd, return one char
#   - if string is even, return two chars
#
# algorithm:
#   -launch
#     - 6 chars - even
#     - chars / 2 = 3
#     - take 2 starting at 3rd index
#   - cases
#     - 5 chars - odd
#     - convert
#     - chars to float / 2 = 2.5
#     - round
#     - return round index
#
# - convert string size to float
# - divide by two
# - if divisible by 2 return two chars at index (chars / 2) - 1
# - if not divisible by 2 return index chars / 2

# my solution: (not how you use variables I think)
# def center_of(str)
#   size = str.size
#   size % 2 == 0 ? str[(size / 2) - 1 , 2] : str[(size / 2), 1]
# end

# flash of theirs
# def center_of(str)
#   center_idx = str.size / 2
#   str.size.even? ? str[center_idx - 1, 2] : str[center_idx, 1]
# end

# test cases:
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
