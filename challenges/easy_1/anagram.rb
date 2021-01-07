=begin
  input: word and array of words
  output: array of words

  rules:
    - given a word, select all of the words in the list that are anagrams of the word

    implicit:
    - if there are no anagrams, return empty array
    - if a word in the list is the word, it does not count
    - case sensitive
    - sort method for anagrams
    - if word is capitalized, anagram must be capitalize but upcased letters dont have to be the same

    anagram - rearranged word using each letter exaclty once

  algorithm:
    - anagram?
      - iterate through each word in the list and select words
        - iterate through each char in the given word and return true if all chars
          - if the count of each char in given word == count of that char in current word?

    - controll for caps
      - if word is capitalized
        - iterate on array of anagrams
        - select words that are capitalized

    - control for same word
      - iterate on anagrams
        - reject words that
        - word.downcase == current_word downcase?


    - create Anagram class that take word argument
    - create match instance method that
      - takes an array argument
      - selects array of anagrams

=end

# class Anagram
#   def initialize(word)
#     @word = word
#   end
#
#   def match(array)
#     @matches = array.select do |cantidate|
#       next if same_word?(cantidate) || too_long?(cantidate)
#       anagram?(cantidate)
#     end
#   end
#
#   private
#
#   def anagram?(cantidate)
#     @word.downcase.chars.all? do |char|
#       @word.downcase.count(char) == cantidate.downcase.count(char)
#     end
#   end
#
#   def too_long?(cantidate)
#      @word.size != cantidate.size
#   end
#
#   def same_word?(cantidate)
#     cantidate.downcase == @word.downcase
#   end
# end


=begin
  algorithm:
    - iterate through array of downcased sorted words and see if they match
    downcased sorted input word AND if the downcased original word does not
    equal current downcased word
=end

class Anagram
  def initialize(word)
    @word = word.downcase
    @letters = word.downcase.chars.sort
  end

  def match(array)
    array.select do |cantidate|
      anagram?(cantidate)
    end
  end

  def anagram?(cantidate)
    @letters == cantidate.downcase.chars.sort && @word != cantidate.downcase
  end
end

test = Anagram.new('corn')

p test.match(%w(corn dark Corn rank CORN cron park))
