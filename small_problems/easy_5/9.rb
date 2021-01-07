# remove consectutive chars from string

# algorithm:
#   - init new string
#   - split the string into array of chars
#   - iterate on array
#   - if current char == next char then skip to next iteration
#   - otherwise push char to new string

def crunch(str)
  result = ''

  arr = str.chars

  arr.each_with_index do |char, idx|
    result << char unless char == arr[idx + 1]
  end
  
  result
end

# was able to do this smoothly in 10 min
# did not explore the Regex solution

=begin

input: string
output: string

rules:
  - return string with consecutive duplicates eliminated
  - return a new string

algorithm:
  - initialize a new string
  - split string into array of chars
  - iterate on chars
    - push char to string if it doesn't equal the next char
  - return string

=end

# def crunch(str)
#   crunched = ''
#
#   index = 0
#   while index <= str.size - 1
#     crunched << str[index] if str[index] != str[index + 1]
#     index += 1
#   end
#   crunched
# end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''



# #my version of thier solution
# def crunch(string)
#   index = 0
#   crunched = ''
#   while index < string.length
#     crunched << string[index] unless string[index] == string[index + 1]
#     index += 1
#   end
#   crunched
# end

#FEX - the last number in the string will not be pushed to the crunched string



# UTP
# input is a string
# output is a string with duplicate chars collapsed into one
# no String#squeeze
#
# ALGORITHM
# string input
# array of chars
# while char equals next char, delete next char
# join

#my solution
# def crunch(string)
#   chars = string.chars
#   index = 0
#   while index < chars.length
#     while chars[index] == chars[index + 1]
#       chars.delete_at(index + 1)
#     end
#     index += 1
#   end
#   chars.join
# end

# p crunch('tttthisss is aaaaa testttt striiing')
#
# # TEST CASES
# p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
# p crunch('4444abcabccba') == '4abcabcba'
# p crunch('ggggggggggggggg') == 'g'
# p crunch('a') == 'a'
# p crunch('') == ''
