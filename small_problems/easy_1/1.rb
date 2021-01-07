# input: string, number
# output: string
#
# rules:
#   - print string integer times
#
# algorithm:
#   - duh

def repeat(str, num)
  num.times { puts str }
end

repeat('Hello', 3)













# def valid_integer?(integer)
#   integer.to_s.to_i == integer && integer > 0
# end
#
# def repeat(word, num)
#   word = word.to_s
#   loop do
#     if !valid_integer?(num)
#       puts "2nd argument: please enter an integer greater than 0."
#       num = gets.chomp.to_i
#     else break
#     end
#   end
#   num.times { puts word }
# end
#
# repeat("word", 5)
# repeat("word", 0)
# repeat("word", -3)
# repeat("word", "this")
# repeat(7, "that")


# *** Problem Outline ***

# - input is 2 arguments
#   - 1 string
#       - string validation?
# #   - 1 integer string
#       -integer validation?
# - output is the string printed integer times
#
# *** Test Cases ***

# "this", 5 => "this" "this" "this" "this" "this"
# "This", -3 => make absolute value or request positive number?
# "That", 0 => request valid positive integer
# "That", 1_000_000_000_000 => boundary limits?
# [1, 2, 3, 4], 1 => [1, 2, 3, 4]
# 23, 4 => 23 23 23 23
# 23, howdy => request valid positive integer

# *** Algorithm ***
  # - convert word to string
# - integer verification method
#   - convert num to string to integer
      # - compare for equality with num
      # - check if greater than zero
#   - return true if valid integer
# - define method with parameters word and num
# - how do you validate a string in a method?
# - integer validation with num parameter
#   - if false, request integer input
#   - if true, print word num times




# *** Algorithm ***

# - get string from user and assign to word
# - get string from user, convert to integer, and assign to num
#   - if num > 0
#     -then print word num times
#     -otherwise, ask for valid integer greater than 0
# puts "Please enter whatever you want."
# word = gets.chomp
#
# num = nil
#
# loop do
#   puts "How many times do you want me to print that?"
#   num = gets.chomp.to_i
#   break if num > 0
#   puts "Invalid entry. Please enter a positive, non-zero number. Try again."
# end
#
# num.times { puts word }
