=begin

We are successfully deleting some of the words from the sentence that we want to.
However, in doing so, we are deleting elements from an array that we are
iterating on. In other words, we are doing something that we should be very
careful with: mutating an array that we are iterating on. So, 'dull' is deleted
but then each goes on to the second element which is now 'cards' because 'dull'
has been deleted.

We can get the desired result if we make a copy of the words array and iterate
on that, deleting negative words from the original array.

=end



def neutralize(sentence)
  sentence
  words = sentence.split(' ')
  words_copy = words.clone
  words_copy.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
