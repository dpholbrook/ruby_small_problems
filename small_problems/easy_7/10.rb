=begin

input: string
output: string

rules:
  - output second to last word
  - words are sequences of non blank chars
  - string always has at least two words

algorithm:
  - split string into array of words
  - return second to last word

=end

# def penultimate(str)
#   str.split[-2]
# end

# input: string
# output: string
#
# rules:
#   - output string is the second to last word from input string
#   - words are any sequence of non blank characters
#   - assume that input is always at least two words
#
# algorithm:
#   - split words into array
#   - return string at index -2

# def penultimate(string)
#   string.split[-2]
# end


# FEX

# edge cases:
#   - one word
#   - empty string
    # - even number of words

def penultimate(string)
  words = string.split
  p words
  if words.size % 2 == 0
    puts "There is no middle word in this string."
  elsif words.empty?
    puts "There is no middle word in an empty string."
  else
  words[words.size / 2]
  end
end

p penultimate('scooby dooby doo')
p penultimate('last word')
p penultimate('Launch School is great!')
p penultimate('Launch School is super great!')
p penultimate('')

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
