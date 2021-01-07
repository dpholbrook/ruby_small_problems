PADDING = ' '
TOP_BOTTOM_PADDING = '-' * PADDING.size

def print_in_box(string)
  string.chop! while string.size > 76

  size = string.size
  top_and_bottom = '+' + TOP_BOTTOM_PADDING + ('-' * size) + TOP_BOTTOM_PADDING + '+'
  second_fourth = '|' + PADDING + (' ' * size) + PADDING + '|'
  third = '|' + PADDING + string + PADDING + '|'
  puts top_and_bottom
  puts second_fourth
  puts third
  puts second_fourth
  puts top_and_bottom
end

p print_in_box('This is a test string. This is a test string. This is a test string. This is a test string. ')
p print_in_box('So is this.')
p print_in_box('')


# ALGORITHM
# padding = '  '
# 5th and 1st level is '+' + padding + string.length * - + padding + '+'
# 4th and 2nd level is | + padding + string.length * ' ' + padding |
# 3rd is | then padding then string then padding then |
#
# UTP
# input is a short line of text (string)
# output is text in box (string)
#
#
#
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
#
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
