=begin
input: string
output: string

rules:
  - one char is one char
  - multiple chars are count of char and one char
  - a space is a char
  - an emoji is a char

  - encode
    - class method
    - takes input
    - returns encoded string

  - decode
    - class method
    - takes encoded string
    - returns decoded string

algorithm:
  - encode
    - counter = 1
    - iterate through string
      - if next char == current char
        - incriment counter and continue
      - else
        - if counter is 1 push empty string and char to result
        - else push counter + letter to result
        - reset count to 1

  - decode
    - result = ''
    - multiplier = ''
    - itereate through string
      - if char is number
        - push to multiplier
      - else
        - if multiplier empty
          - push letter to result
        - else multiply letter by multiplier
        - reset multiplier
=end
require 'pry'

class RunLengthEncoding

  def self.encode(input)
    encoded_string = ''
    letter_count = 1

    input.chars.each_with_index do |char, idx|
      next_char = input[idx + 1]

      if char == next_char
        letter_count += 1
      else
        letter_count = letter_count == 1 ? '' : letter_count.to_s
        encoded_string << (letter_count + char)
        letter_count = 1
      end
    end

    encoded_string
  end

  def self.decode(input)
    decoded_string = ''
    letter_count = ''

    input.chars.each do |char|
      if ('0'..'9').include?(char)
        letter_count << char
      else
        if letter_count.empty?
          decoded_string << char
        else
          decoded_string << (char * letter_count.to_i)
          letter_count = ''
        end
      end
    end

    decoded_string
  end
end

# p RunLengthEncoding.encode("thhh  ishh")
p RunLengthEncoding.decode("T3H2 IS2H")
