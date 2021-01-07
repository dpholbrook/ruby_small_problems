# input: string
# output: string
#
# rules:
#   - return string with 5 or more letter words reversed
#   - spaces only if more than one word is present
#
# algorithm:
#   - split string into array of words
#   - iterate on words
#     - if word size is 5 or more
#       - reverse the word
#   - join the array into a string an return it


# def reverse_words(str)
#   reversed_array = str.split.each do |word|
#     word.reverse! if word.size >= 5
#   end
#   reversed_array.join(' ')
# end

# shorter:

def reverse_words(str)
  str.split.each { |word| word.reverse! if word.size >= 5 }.join(' ')
end

# it feels more appropriate to destructively reverse the string elements in the array rather than returning a new transformed array


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS



# mine:
# def reverse_words(string)
#   string.split.map { |word| word.length >= 5 ? word.reverse : word }.join(" ")
# end

# theirs:
# def reverse_words(string)
#   words = []
#
#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end
#
#   words.join(' ')
# end

p reverse_words("howdy there sir")
p reverse_words("this")
p reverse_words("this is how we do it")
p reverse_words("this supposedly works")

# Algorithm
# - split string into array
# - iterate to return new array
#   - if element length is 5 or more
#     - reverse element
# - join elements
#
# UTP
# - method that takes one argument which is a string with one or more words
# - returns a string with 5 or more letter words reversed
# - each string includes only letters and spaces
# - spaces should only be present when there is more than one word
#
# Input
# - string with one word or more
#
# Output
# - string with 5 or more letters reversed
#
# Test Cases
#
# puts reverse_words("this") => "this"
# puts reverse_words("this is how we do it") => "this is how we do it"
# puts reverse_words("this supposedly works") => "this yldesoppus skrow"
#
# Data Structure
# - input and output are strings
# - convert string to array to reverse individual string elements
