=begin
input: string
output: string

rules:
  - double every consonant
  - everything else is not doubled
  - new string

algorithm:
  - if char is consonant push double
    -
=end

def double_consonants(str)
  result = ''
  str.chars.each do |char|
    if char =~ /[a-z&&[^aeiou]]/i
      result << char << char
    elsif
    result << char
    end
  end
  result
end

# input: string
# output: string
#
# rules:
#   - every consonant is doubled
#   - vowels, digits, punctuation, and whitespace is not doubled
#

# algorithm
#   - split string into array of chars
#   - iterate to return new mutated array of chars
#   - if char matches A-z but not ^aeiouAEIOU then char + char
#   - otherwise char


# def double_consonants(str)
#   str.chars.map do |char|
#     char =~ /[a-z]/i && char =~ /[^aeiou]/i ? char + char : char
#   end.join
# end

p double_consonants('String 948 ^$*&')
#
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
