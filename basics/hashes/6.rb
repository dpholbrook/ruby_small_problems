=begin
input: array of strings
output: print multiple arrays of strings

rules:
explicit:
  - each printed array contains a different anagram
implicit:
  - each word has four chars

algorithm:
  - initialize new hash
    - each key is a sorted version of an anagram
    - each value is an array of anagrams for that sorted word

  - iterate on array of strings
    - break string into array of chars and sort chars
  - if sorted version of curent word is a key in the hash, add that word to the associated value array
  - else create key that is the sorted version of current word and add current word to the associated value array

  - find anagrams
    - words that have the same number of each letters
    - sort the letters of each word and compare to sorted version of current word

=end

def anagrams(words)
  anagrams = Hash.new(0)

  words.each do |word|
    sorted = (word.chars.sort.join)
    if anagrams.has_key?(sorted)
      anagrams[sorted] << word
    else
      anagrams[sorted] = [word]
    end
  end

  anagrams.each_value do |v|
    p v
  end
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

anagrams(words)




# words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
#           'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
#           'flow', 'neon']
#
#
# result = {}
#
# words.each do |word|
#   key = word.split('').sort.join
#   if result.has_key?(key)
#     result[key].push(word)
#   else
#     result[key] = [word]
#   end
# end
#
# result.each_value do |value|
#   puts "________________"
#   puts value
# end

# make an empty hash called result

#do this to each original string in the array
# make a bunch modified sorted and joined strings and assign them to the variable key
# if the hash has that same modified string as a key
# then push that string in its original form to the array value associated with that key
# otherwise, make the modified string a key and assign it the value of an array with the original string in it


# for every value array in the hash
#print a dividing line
# and print each value array
