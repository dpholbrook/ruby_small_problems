=begin

input:
  - string

output:
  - hash

rules:
  - hash is count of words with a particular size {word_size => number of words of that size }

algorithm:
  - split string into arry of words
  - initialize hash
  - determine size of word and increment or assign to hash
  - return hash

=end

def word_sizes(str)
  hsh = Hash.new(0)

  str.split.each { |word| hsh[word.size] += 1 }

  hsh
end

# def word_sizes(str)
#   hsh = {}
#
#   str.split.each do |word|
#     hsh.key?(word.size) ? hsh[word.size]+= 1 : hsh[word.size] = 1
#   end
#
#   hsh
# end

#their solution
# def word_sizes(words)
#   counts = Hash.new(0)
#
#   words.split.each { |word| counts[word.size] += 1 }
#   counts
# end

# my solution:
# def word_sizes(words)
#   sizes = words.split(' ').map { |word| word.size }
#
#   count = {}
#   sizes.each { |char| count.has_key?(char) ? count[char] += 1 : count[char] = 1 }
#   count
# end

p word_sizes('this is a string that is pretty neat i bet it is')
# TEST CASES
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# UTP
# input is a string with one or more words separated by spaces
# output is a hash
#   key is character length
#   value is number of words with that character length
# words are any string character separated by a space
#
# DATA STRUCTURE
# string input
# array of words
# hash of character length
#
# ALGORITHM
# split string into array of words
# return length of each element into new array
# create character count hash
# if the hash has the key of current element
#   add 1 to the value
# else make the current element a key in the hash
# return the hash
