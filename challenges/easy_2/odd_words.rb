require 'pry'

=begin
input: string
output: transformed string

rules:
  - word is 1-20 chars separated by one or more spaces
  - input text is
    - 1 or more words
    - separated by one or more spaces
    - terminated by 0 or more spaces and a period

  - read input text from first letter to terminating point?
  - ouput
    - words separated by only one space
    - ending in a period
    - odd index words are reversed
    - even index words are echoed

    ex
      - "whats the matter with kansas."
        - "whats eht matter htiw kansas."

algorithm:
    -
  - split string into array of words


  - transform array
    - even index return word
    - odd index retrn reversed word

    - append period to last word
    - if last word is not a period and the array size is even
      - remove period from last word
      - reverse word
      - add period to it
=end

# def test(b)
#   a = 'this'
#   puts b
#   binding.pry
# end
#
# test('that')

def transform(string)
  arr = string.split

  transformed = arr.map.with_index do |word, idx|
    idx.even? ? word : word.reverse
  end

  if transformed.last == '.'
    transformed[-2] << transformed.pop
  elsif transformed.size.even?
    transformed[-1] = transformed.last[1..-1] + '.'
  end

  transformed.join('  ')
end

p transform('this  is a test     .')
p transform('this  is a another test     .')
p transform('this is     a nother   big test.')
