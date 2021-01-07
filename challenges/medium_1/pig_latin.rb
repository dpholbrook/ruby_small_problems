=begin
  input: word or multiple words
  output: pig latin word

  rules:
    - if word starts with consonant sound, put it to the end and add 'ay'
    - if word starts with vowel sound, add 'ay' to the end
    - must handle multiple words

    - sound must be at beginning of word, not from the middle

    consonant sounds:
      - p
      - k
      - ch
      - qu
      - sq
      - th
      - thr
      - sch

      - consonant sound is any string of consonants at beginning of word or qu


    special consonant sounds:
      - ye - only move y
      - xe - only move x

    vowel sounds:
      - aeiou
      - x or y with a consonant after (not with a vowel after)
      - /^[aeiou]|^[xy][^aeiou]/

  algorithm:

    - convert word to pig latin
    - if starts with vowel sound
      - add ay to the end
    - if not, move consonant sound letter to end and add ay to the end


    - parse consonant sound
      - iterate through chars
        - consonant is qu OR
        - consonant sound is chars until char is a vowel

        - remove chars up to index and put consonant sound at end with ay
      -


    - PigLatin class
      - initialize words instance variable to array of words

      - transalte instance method
        - iterate on words
          - translate each word
        - return string of translated words

        - translate each word
          - create consonants array
            - iterate on consonants
          - if word matches current consonant
            - then delete that consonant and add it to the end with ay
          - if word starts with special consonant sound,

        - handle multiple words
          - input is words
          - @@words is array of words
          - translate iterates on array of words, transforming them to pig latin


=end
class PigLatin
  def self.translate(words)
    words.split.map do |word|
      vowel_sound?(word) ? word + 'ay' : parse_consonant_sound(word)
    end.join(' ')
  end

  def self.parse_consonant_sound(word)
    if word.start_with?('qu')
      word[2..-1] + word[0..1] + 'ay'
    elsif word.match(/^[^aeiou]qu/)
      word[3..-1] + word[0..2] + 'ay'
    else
      index = word.chars.index { |char| char.match(/[aeiou]/)}
      word[index..-1] + word[0..index - 1] + 'ay'
    end
  end

  def self.vowel_sound?(word)
    word.match(/^[aeiou]|^[xy][^aeiou]/)
  end
end

p PigLatin.translate('square boat')
p PigLatin.translate('apple')

# def pig(word)
#   p consonant_split = /\A([^aeiou]*qu|[^aeiou]+)([aeiou].*)\z/.match(word)
#   [consonant_split[1], consonant_split[2]]
# end

# a consonant is 'qu' with or without one or more consonants in front of it OR anything that is not aeiou

# match starting at beginning of string(0 or more conosonants followed by 'qu' or 1 or more consonants) and a vowel followed by 0 or more characters to the end of the word
# using /regex/.match((this)(that))will return a match data object with 2 parts: this and that
# we can reference these two different parts with match_object[part] syntax

p pig('skippy')
p pig('queen')

p /(s)(k)/.match('skippy')
