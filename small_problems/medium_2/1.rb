# the special way they split the string is not something you need to worry about
# split it the more simple way
# get the basic logic of pulling out the string with the longest sentence

=begin
input: string
output: string with word count

rules:
  - print string with word count
  - sentences end with . ! ?

algorithm:
  - split string into array of sentences
  - split each sentence into an array of words
    - select the array of words that has the greatest size
  - count words in each string sentence
=end






# input: string
# output: string
#
# rules:
#   - return the longest sentence in the string
#     - based on number of words
#   - sentences end in . ? !
#   - any chars separated by spaces are words
#
# algorithm:
#   - split string into array of sentences
    # - iterate on array of sentences, splitting each sentence into a sub array of words
      # - iterate on each sub array of words
      #   - determine size of each sub array of words
      #   - compare size of each sub array
      #   - biggest = nil
      #   - biggest = arr if arr.size > biggest
      #   - return the sub array with biggest size
      #   - join words into sentence

  # - return biggest array of words

  # string = "Four score and seven years ago our fathers brought forth
  # on this continent a new nation, conceived in liberty, and
  # dedicated to the proposition that all men are created
  # equal.
  #
  # Now we are engaged in a great civil war, testing whether
  # that nation, or any nation so conceived and so dedicated,
  # can long endure. We are met on a great battlefield of that
  # war. We have come to dedicate a portion of that field, as
  # a final resting place for those who here gave their lives
  # that that nation might live. It is altogether fitting and
  # proper that we should do this.
  #
  # But, in a larger sense, we can not dedicate, we can not
  # consecrate, we can not hallow this ground. The brave
  # men, living and dead, who struggled here, have
  # consecrated it, far above our poor power to add or
  # detract. The world will little note, nor long remember
  # what we say here, but it can never forget what they
  # did here. It is for us the living, rather, to be dedicated
  # here to the unfinished work which they who fought
  # here have thus far so nobly advanced. It is rather for
  # us to be here dedicated to the great task remaining
  # before us -- that from these honored dead we take
  # increased devotion to that cause for which they gave
  # the last full measure of devotion -- that we here highly
  # resolve that these dead shall not have died in vain
  # -- that this nation, under God, shall have a new birth
  # of freedom -- and that government of the people, by
  # the people, for the people, shall not perish from the
  # earth."

text = File.read('sample_text.txt')
sentences = text.split(/[.?!]/)
longest = sentences.max_by do |sentence|
  sentence.split.size
end

puts longest



# array_of_sentences = string.gsub('!', '*').gsub('.', '*').gsub('?', '*').split('*')
# arrays_of_words = array_of_sentences.map do |sentence|
#   sentence.split(' ')
# end
#
# most_words = []
# arrays_of_words.each do |arr|
#   most_words = arr if arr.size > most_words.size
# end
#
# word_count = most_words.size

# puts "The largest sentence is #{most_words.join(' ')}."
# puts "That big ol' sentence has #{word_count} words."
