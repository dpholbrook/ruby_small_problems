=begin

input: string
output: string

rules:
  - return a string with last name comma first name

algorithm:
  - initialize new string
  - split string into array of words
  - push last word comma space first word to new string
  - return new string

=end

def swap_name(str)
  result = ''
  str_arr = str.split
  result << str_arr[-1] << ', ' << str_arr[0]
end

# input: string
# output: string
#
# rules:
#   - input is first name, space, last name
#   - return last name, a comma, a space, first name
#

# questions:
#   - will it always be a two word string
#   - can i mutate the
#
# algorithm:
#   - split string into array of two strings
#   - swap the two elements using multivariable assignemnt
#   - join the two strings with a comma
#   - return the string

# def swap_name(str)
#   arr = str.split
#   arr[0], arr[1] = arr[1], arr[0]
#   arr.join(', ')
# end

p swap_name('Joe Roberts')

# test cases:
p swap_name('Joe Roberts') == 'Roberts, Joe'
