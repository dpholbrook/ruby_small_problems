=begin

input: two strings
output: one string

rules:
  - determine which input string is longer
  - return short + long + short
  - strings are different lengths

algorithm:
  - initialize longer variable
  - initialize shorter variable
  - determine which string is longer
    - assign longer string to longer and shorter string to shorter
  - return concatenation of shorter + longer + shorter

=end

def short_long_short(str1, str2)
  if str1.size > str2.size
    longer = str1
    shorter = str2
  else
    longer = str2
    shorter = str1
  end

  shorter + longer + shorter
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

#===================


# def short_long_short(string_1, string_2)
#   if string_1.size < string_2.size
#     string_1 + string_2 + string_1
#   else
#     string_2 + string_1 + string_2
#   end
# end
#
# p short_long_short("this is the first string", "and second")

#
#
# START
# if string_1.size < string_2.size
#   string_1 + string_2 + string_1
# else
#   string_2 + string_1 + string_2
# END
#
#
# if length of first arg > length of second arg
#   return second arg + first arg + second arg
# else
#   return first arg + second arg + first arg
#
#
# method with two string arguments
# takes longest of two strings
# returns concatenation of shorter string, longer string, shorter string
# assume strings are of different lenghts
#
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"
