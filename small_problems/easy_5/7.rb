# def word_sizes(str)
#   hsh = Hash.new(0)
#
#   str.split.each { |word| hsh[word.delete('^A-z').size] += 1 }
#
#   hsh
# end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}



# the implimentation of passing only a string with alpha chars to word sizes gave me some trouble
# give it another shot


=begin
rules:
  - word size does not include non alpha chars

algorithm:
  - return new arr of transformed words
    - select chars from words that are alpha
=end
# def alpha_words(str)
#   words_arr = str.split.map do |word|
#     word.chars.select { |char| char =~ /[A-z]/ }.join
#   end
#   words_arr
# end
#
# p alpha_words("What's up doc?")
#
# def word_sizes(str)
#   hsh = Hash.new(0)
#
#   alpha_words(str).each { |word| hsh[word.size] += 1 }
#
#   hsh
# end


# def delete_nonalpha(str)
#   str.delete('^A-z ')
# end
#
#
# p delete_nonalpha("What's up doc?")

# def word_sizes(words)
#   counts = Hash.new(0)
#   words.delete!('^A-z ')
#   words.split.each { |word| counts[word.size] += 1 }
#   counts
# end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
