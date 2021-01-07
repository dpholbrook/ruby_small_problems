=begin
  input: string
  output: hash of each word and their count

  rules:
    - word_count should return hash of words and their count
    - ignore punctuation, commas, newline chars, single quotes
    - downcase words
    - numbers count as words
    - must count on words with apostrophes

  algorithm:
    - normalize string
      - return array that only contains downcased sequences of one or more word chars or '
        in between two word boundaries

    - word count
      - iterate on array of words incrimenting values in hash for each word
=end

class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    normalize.each_with_object(Hash.new(0)) { |word, obj| obj[word] += 1 }
  end

  def normalize
    @string.downcase.scan(/\b[\w']+\b/)
  end
end

p Phrase.new("this: is a javascript!!&@$%^& test,test,\ntest don't you think 'these'?").normalize
