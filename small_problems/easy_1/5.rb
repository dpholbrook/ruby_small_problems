# input: string
# output: string
#
# rules:
#   - return a new string with words in reverse order
#
# algorithm:
#   - split into array of strings
#   - initialize a new string array
#   - iterate on array of words
#   - take first word from input array and put it at beginning of new array
  # - join into string


def reverse_sentence(str)
  reversed_arr = []
  word_arr = str.split
  word_arr.each do |word|
    reversed_arr.unshift(word)
  end
  reversed_arr.join(' ')
end



p reverse_sentence('') == ''
p reverse_sentence('Hello World') == 'World Hello'
p reverse_sentence('Reverse these words') == 'words these Reverse'







#=============================


# def reverse(string)
#   string.split.reverse.join(" ")
# end
#
# puts reverse("this is my string") == "string my is this"
# puts reverse("howdy doody") == "doody howdy"
# puts reverse("") == ""
# puts reverse("l") == "l"
# puts reverse("la") == "la"

# Algorithm
# - split string into array of strings
# - reverse order of elements in the array
# - join elements into one string
# - return the element in the array
#
# UTP
# - method
# Input
# - one string as an argument
# Output
# - returns a new string with words in reverse order
#
# Test Cases
# reverse("hello") => "hello"
# reverse("hello world") => "world hello"
# reverse("hello my sweet world") => "wold sweet my hello"
#
# Data Structure
# - convert string argument to array of strings
# - covert array of strings back to string
