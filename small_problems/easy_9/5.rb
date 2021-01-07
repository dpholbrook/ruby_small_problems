=begin

input: string
outout: boolean

rules:
  - return true if all chars are upcase
  - false otherwise
  - ignore non alpha

algorithm:
  - split string into array of chars
  - iterate on array of chars (all?)
  - char == char.upcase

=end

def uppercase?(str)
  str.chars.all? { |char| char == char.upcase }
end

# input: string
# output: boolean
#
# rules:
#   - return true if all alpha chars in str are uppercase
#   - false otherwise
#   - ignore non alpha chars
#
# algorithm
#   - initialize new string and assign to
#     - replace non alpha chars with empty string
#   - if new string == new string upcased then return true
#   - else return false

# def uppercase?(str)
#   alpha_str = str.gsub(/[^A-z]/, '')
#   alpha_str == alpha_str.upcase
# end

# had a hard time figuring out how to get rid of non alpha chars
# my original thought to use g sub was good
# but, i had a lot of trouble with the regex

# test cases:
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
