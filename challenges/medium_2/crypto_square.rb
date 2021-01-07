=begin
  input: string
  output:
    - string normalized
    - integer size of square
    - array of strings of each line of square
    - string of cyphertext
    - string of normalized cyphertext (columns of square)

  rules:
    - remove spaces and punctuation and downcase
    - if size is perfect square, then sqrt is rows and colums
    - number of columns is the first number whos square is not less than size of normalized input

  algorithm:
    - normalize_plaintext
      - remove spaces and punctuation and downcase

    - size
      - count up from 1
      - return count if its square is not less than normalized string size

    - plain_text_segments
      - starting at index 0, take a slize of size chars and push to array
      - incriment index by size and do until index + size >= string size
      - how to get last few letters?


      - take size chars of plain text, putting them in array
      - return array of chars elements

    - ciphertext
      - iterate on array of words
      - for each word, push current char to string
      - incriment char
      - do this until current char == nil
      - return string

    - normalize_ciphertext
      - iterate on plain text segments
      - push first chars of each word to string
      - separate each word with a space
=end

class Crypto
  def initialize(string)
    @string = string
    @plaintext = normalize_plaintext
    @size = size
    @segments = plaintext_segments
  end

  def normalize_plaintext
    @string.scan(/\w/).join.downcase
  end

  def size
    size = @plaintext.size
    Math.sqrt(size).ceil
  end

  def plaintext_segments
    segments = []
    start = 0
    @plaintext.chars.each_slice(@size) do |slice|
      segments << slice
    end

    segments.map(&:join)
  end

  def ciphertext
    ciphertext = ''
    index = 0

    loop do
      @segments.each do |word|
        break if word[index] == nil
        ciphertext << word[index]
      end

      index += 1
      break if index > @size
    end

    ciphertext
  end

  def normalize_ciphertext
    ciphertext = ''
    index = 0

    loop do
      @segments.each do |word|
        break if word[index] == nil
        ciphertext << word[index]
      end

      ciphertext << ' '

      index += 1
      break if index > @size
    end

    ciphertext[0..-3]
  end

  private

  def reorder_chars

  end
end


test = Crypto.new('thisisatest')

p test.normalize_ciphertext
