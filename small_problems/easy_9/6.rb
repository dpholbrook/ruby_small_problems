=begin

input: string
output: array

rules:
  - array has every word with space and word legth appended

algorithm:
  - split string into array of words
  - transform words with map
  - word space word.size

=end

def word_lengths(str)
  str.split.map { |word| word + ' ' + word.size.to_s }
end

# input: string
# output: array
#
# rules:
#   - array has every word from the string
#   - a space with the number indicated word lenght is appended
#   - assume that words are separated by one space
#   - any substring of non space chars is a word
#
# algorithm:
#   - split string into an array of strings
#   - iterate on strings (map)
#     - return a string that contains the original string, a space, and string size
#

# def word_lengths(str)
#   str.split.map { |sub_str| "#{sub_str} #{sub_str.size}"}
# end

# test cases:
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
