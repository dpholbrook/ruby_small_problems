# count all chars in string except for spaces
#
# delete spaces
# count chars

def count_chars(str)
  p str.delete(' ').size
end

count_chars("walk, don't run")


# input: string
# output: string
#
# rules:
#   - output how many chars in input
#   - spaces dont count
#
#
# algorithm:
#   - break string into an arry of characters and determine length
#   - return lenght in a string

# puts "Please enter a word or words."
# str = gets.chomp
#
# char_count = str.delete(' ').size
#
# puts "There are #{char_count} characters in \"#{str}\"."

# puts "Please write a word or multiple words."
# words = gets.chomp
#
# characters = words.delete(" ").size
#
# puts "There are #{characters} characters in #{words}."


# Algorithm
# - get words
# - split words into array of characters
# - iterate through array
#   - if an element contains a character add one to counter
#
# START
# GET and SET user_input
# SET split user input to array of characters
# SET counter = 0
# iterate on characters
# IF element exists counter += 1
# PRINT counter
# END
#
#
# Input
# - word or sentence
# - numbers?
#
# Output
# - number of characters (not including spaces)
#
# Please write word or multiple words: walk
# There are 4 characters in "walk".
