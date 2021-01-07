=begin

input: string
output: string

rules:
  - return new string double each character

algorithm:
  - initialize new string
  - iterate on string pushing char * 2 to new string

=end

def repeater(str)
  result = ''

  str.chars.each { |char| result << char * 2 }
  result
end

# input: string
# output: string
#
# rules:
#   - every character in the string is doubled

# algorithm:
#   - split string into array of chars
#   - iterate on string using map to mutate and return a new array of chars
#     - element + element

# def repeater(str)
#   str.chars.map { |char| char + char }.join
# end

p repeater('test')

# test cases:
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
