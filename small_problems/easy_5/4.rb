# def swap(str)
#   words = str.split
#   words.each do |word|
#     word[0], word[-1], = word[-1], word[0]
#   end
# 
#   words.join(' ')
# end
#
# p swap('Oh what a wonderful day it is')
#
# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

# this was well done but just one little thing that tripped it up
# do again real quick
# FEX is done


=begin
input: string of words
output: string of words with first and last letter of each word swapped

rules:
  - word has at least one letter
  - string has at least one word
  - string has nothing but words and spaces

algorithm:
  - split string into array of words
  - map words and assigning first and last index with paralell assignment
  - join string and return it
=end

# def swap(str)
#   result = str.split.map do |word|
#     word[0], word[-1] = word[-1], word[0]
#     word
#   end
#   result.join(' ')
# end

# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end
#
# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

#FEX
# this will not work because although the swap_first_last_characters method is swapping the chars of the word, it is not returning the word, only the swapped chars
# def swap_first_last_characters(a, b)
#   a, b = b, a
# end
#
# def swap(words)
#   result = words.split.map do |word|
#     p swap_first_last_characters(word[0], word[-1])
#   end
#   result.join(' ')
# end



# p swap('Oh what a wonderful day it is')
#
# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'



# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end
#
# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end

# mysolution

# def swap(string)
#   strings = string.split.map do |string|
#     string[0], string[-1] = string[-1], string[0]
#     string
#   end
#   strings.join(' ')
# end

# p swap('This is a test string')
# p swap('t')

# TEST CASES
# p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# p swap('Abcde') == 'ebcdA'
# p swap('a') == 'a'

# ALGORITHM
# split string into array of strings
# => for each element in the array
# => if element.size = 1 return element
# =>  save the first char
# => delet the first char
# => save the last char
# => delete the last char
# => prepend last
# => append first character


# UTP
# input is a string of words
# output is a string with the first and last letters of every word swapped
#

#
