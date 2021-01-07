# input: string
# output: integer
#
# rules:
#   - output is sum of ascii values of each char
#   - use .ord to determine char value
#
# algorithm:
#   - split string into array of chars
#   - iterate on chars
#   - determine value of each char
#   - sum value

def ascii_value(str)
  str.chars.map { |char| char.ord }.sum
end



p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0


#=======================

# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end
#
# p ascii_value('this')
#
# # TEST CASES
# p ascii_value('Four score') == 984
# p ascii_value('Launch School') == 1251
# p ascii_value('a') == 97
# p ascii_value('') == 0

#Further Exploration

p 'h'.ord.chr


# Algorithm
# START
# GET string
# SET characters = string split into array of characters
# SET ascii_string_value = 0
#   iterate on string
#     SET ascii_string_value += element ascii value
# return ascii_value
# END
#
# UTP
# return ASCII string value for a string
#   - sum of ASCII value for each character
#   - use String#ord
#
# input is string
# output is ascii values
#
# TEST CASES
# ascii_value('Four score') == 984
# ascii_value('Launch School') == 1251
# ascii_value('a') == 97
# ascii_value('') == 0
