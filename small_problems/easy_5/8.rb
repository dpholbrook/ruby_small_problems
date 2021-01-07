=begin

input: array 0 to 19
output: sorted array

rules:
  - sort input array by english word for each number

=end

STRING_NUMS = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)


def alphabetic_number_sort(arr)
  arr = STRING_NUMS.zip(arr)

  arr.sort!.map! do |word, num|
    num
  end

  arr
end






p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]



# my way worked, took 25 minutes or so
# their way is much more simple but the method implimentation is challenging
# i was able to recreate their solution with a few minutes of trouble
# give it another shot

=begin

input: array of integers
output: array of sorted strings

rules:
  - convert intgers to their string word
  - sort string words
  - return array based on sorted string words

algorithm:
  - sort strings of numbers
  - create conversion hash
  - iterate on sorted strings
    - return an array with the number keys for each string value from conversion hash

algorithm II:
  - create array of string numbers
  - each index of the array is the number value of the string
  - sort by the string value, returning the index of each string

=end


# STRING_NUMS = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)


# def alphabetic_number_sort(arr)
#   string_to_num = Hash.new(0)
#   sorted_strings = STRING_NUMS.each_with_index { |word, idx| string_to_num[word] = idx }.sort
#
#   sorted_strings.map { |string| string_to_num[string] }
# end

# flash of their solution:

# def alphabetic_number_sort(arr)
#   arr.sort_by { |num| STRING_NUMS[num]}
# end

# this method sorts the input array of integers
# each number from the array is passed to the block and sorted by the return value of the block
# the return value of the block is the string that corresponds with that number
# basically, we are using the values of an array of strings to sort another array containing their corresponding indexes


# p alphabetic_number_sort((0..19).to_a)
#
#
#
# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]







# ENGLISH_WORDS = %w(zero one two three four five six seven eight nine ten eleven
#    twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)
#
# def alphabetic_number_sort(integers)
#   integers.sort_by! { |num| ENGLISH_WORDS[num] }
# end
#
# integers = (0..19).to_a
# p alphabetic_number_sort(integers)
#
# p integers

#my solution
# ENGLISH_WORDS = {
#   'zero' => 0 , 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5,
#   'six' => 6, 'seven' => 7, 'eight' => 8, 'nine' => 9, 'ten' => 10,
#   'eleven' => 11, 'twelve' => 12, 'thirteen' => 13, 'fourteen' => 14,
#   'fifteen' => 15, 'sixteen' => 16, 'seventeen' => 17, 'eighteen' => 18,
#   'nineteen' => 19
# }
#
#
# def alphabetic_number_sort(integers)
#   words = integers.map { |num| ENGLISH_WORDS.key(num) }.sort
#   words.map { |word| ENGLISH_WORDS[word]}
# end

# p alphabetic_number_sort((0..19).to_a)
#
#
# # TEST CASE
# p alphabetic_number_sort((0..19).to_a) == [
#   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#   6, 16, 10, 13, 3, 12, 2, 0
# ]

# UTP
# input is an array of intgers between 0 and 19
# output is and array of those integers sorted based on the english word for that number
#
# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
#
# DATA STRUCTURE
# array of intgegers
# hash to convert to english words
# array of sorted english words
# hash to convert english words to integers
#
# ALGORITHM
# hash to convert integers between 0 and 19 to english words
# array of intgeger input
# convert array of integers to array of english word strings
# sort array of strings
# convert array of strings to array of integers
# output sorted array of integers
