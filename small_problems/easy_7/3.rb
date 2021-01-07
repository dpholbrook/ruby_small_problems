def word_cap(str)
  str.split.map(&:capitalize).join(' ')
end

def word_cap(str)
  str.split.map do |word|
    word.downcase!
    word[0] = word[0].upcase
    word
  end.join(' ')
end


# ran into a strange issue mutating the first char of the string with upcase!

=begin

input: string
output: string

rules:
  - return a new string with every word capitalized
  - words are non blank chars sequences

algorthim:
  - split string into array of words
  - transform each word, returning new array of capitalized words

FEX - no capitalize method

  algorithm:
    - upcase first char of each word


=end

# def word_cap(str)
#     str.split.map(&:capitalize).join(' ')
# end

# def word_cap(str)
#   arr = str.split.map do |word|
#     word.downcase!
#     word[0].upcase + word[1..-1]
#   end
#
#   arr.join(' ')
# end
# require 'pry'
# def word_cap(str)
#   arr = str.split
#   arr.each do |word|
#     word.downcase!
#     word[0].upcase!
#   end
#
#   arr.join(' ')
# end

# this doesn't work
# why doesn't word[0].upcase! permanently capitalize the first letter of the word?




# input: single string
# output: new string
#
# explicit requirements:
#   - contains original string value with first character of each word capitalized and all other charachters lower case
#
# algorithm
#  - split into array of words
#  - initialize new string to the return value of map!
#   - capitalize each string in array
#  - join strings with space in between
#  - return new string

# my solution:
# def word_cap(str)
#   str.split.map! { |word| word.capitalize }.join(' ')
# end

# even better:
# def word_cap(str)
#   str.split.map!(&:capitalize).join(' ')
# end

# further exploration:
# def word_cap(str)
#   capitalized = str.split.each do |word|
#     word.downcase!
#     word[0] = word[0].upcase
#   end
#   capitalized.join(' ')
# end


word_cap('the')

#word_cap('the javaScript language')
p word_cap('four score and seven')

# test cases
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
