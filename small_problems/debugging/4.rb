=begin

Here the error suggests that we are trying to add a string to an array. words[i]
is a string object so we need to turn it into an array. Now, we are adding a
single element array of each word in the words array to the beginning of the
reversed words array.

=end

def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words = [words[i]] + reversed_words
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'
