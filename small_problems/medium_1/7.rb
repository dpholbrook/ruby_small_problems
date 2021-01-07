# do this one again

=begin

input: string
output: string

rules:
  - convert and words: 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
    - to a string digit

  - return same string or new one?

algorithm:
  - create conversion hash
  - split string into array of words
  - iterate on array of words
    - transform any word that is a key in the hash to its digit equivalent
  - join transformed array and return string


  - if the word has a period see if the word without the period is in the hash.
    - if it is return the digit plus a '.'

=end

# my try at their solution:
# DIGITS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
#
#
# def word_to_digit(str)
#   DIGITS.each do |word|
#     str.gsub!("#{word}", DIGITS.index(word).to_s)
#   end
#   str
# end


p word_to_digit('Please call me at five five five one two three four. Thanks.')

# test case:
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


# input: string
# output: string
#
# rules: convert number 1-9 words (ex 'one') to string digits (ex '1')
#
# algorithm:
#   - hash to convert number word strings to string digits
#   - split string into array of strings
#   - iterate on the array of strings
#     - if the hash keys include string word then return the value for that word
#   - return converted string

# DIGITS = {
#   'zero' => '0',
#   'one' => '1',
#   'two' => '2',
#   'three' => '3',
#   'four' => '4',
#   'five' => '5',
#   'six' => '6',
#   'seven' => '7',
#   'eight' => '8',
#   'nine' => '9'
#   }
#
# def word_to_digit(str)
#
#   converted = str.split.map do |word|
#     if word.end_with?('.') && DIGITS.has_key?(word[0..-2])
#         word = DIGITS[word[0..-2]] + '.'
#     else
#       DIGITS.has_key?(word) ? word = DIGITS[word] : word
#     end
#   end
#
#   converted.join(' ')
# end

# their solution:
#
# DIGIT_HASH = {
#   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
#   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# }.freeze
#
# def word_to_digit(words)
#   DIGIT_HASH.keys.each do |word|
#     words.gsub!(/\b#{word}\b/i, DIGIT_HASH[word])
#   end
#   words
# end
#
# for each word in the hash, if the sentence has a complete word that matches
#   that word (like eight but not freight) then replace it with the digit equivalent.
