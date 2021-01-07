=begin

input:  string
outpu: new string

rules:
  - swap upper and lower
  - every other char remains the same
  - can't use swap method

algorithm:
  - split string into array of chars
  - iterate on chars
    - if char is lowercase
      - upcase it
    - if char is uppercase
      - downcase it
    - if char is non alpha then return char
  - join array of characters
  - return string
=end

def swapcase(str)
  chars = str.chars

  swapped =
  chars.map do |char|
    if char =~ /[^A-z]/
      char
    elsif char =~ /[a-z]/
      char.upcase
    else
      char.downcase
    end
  end
  swapped.join
end

# this is a better method than the one below. that code is short and it works.
# but, this version is easy to read and would be easy for someone to understand
# the code below, they would have to guess what you are trying to accomplish with the method

p swapcase('CamelCase')

# input: string
# output: string
#
# rules:
#   - every uppercase letter is replaced by lowercase
#   - every lowercase letter is replaced by uppercase
#   - other characters are unchanged
#   - can not use String#swapcase
#
# algorithm
#   - split string into array of characters
#   - if char == char.upcase
#     - char.downcase
#   - else char.upcase
#   - join characters
#   - return string

# def swapcase(str)
#   str.chars.map { |char| char == char.upcase ? char.downcase : char.upcase }.join
# end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
