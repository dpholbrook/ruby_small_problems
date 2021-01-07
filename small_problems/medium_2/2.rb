# this went very well
# could be good to do again but will likely be very easy

=begin

input: string
output: boolean

rules:
  - string input only reuturns true if it does not use a spelling block more than once

algorithm:
  - init array of spelling blocks
  - iterate on array of spelling blocks
    - if string has 2 occurences of that block, return false

=end

# def block_word?(str)
#   blocks = ['bo', 'xk', 'dq', 'cp', 'na', 'gt', 're', 'fs', 'jw', 'hu', 'vi', 'ly', 'zm']
#
#   blocks.all? do |block|
#     str.count(block) < 2
#   end
# end

# input: string
# output: boolean
#
# rules:
#   explicit:
#     - return false if string uses both letters of a spelling block
#     - return true if string does not use both letters of a spelling block
#     - each block can only be used once (but does not have to be)
#   implicit:
#     - not case sensitive
# algorithm
#   - store spelling blocks in array of strings
#   - create array of input string chars
#   - iterate through each spelling block string
#     - initialize occurence variable and assign 0 to it
#     - iterate through each input string char
#       - see if char is included in the block
#         - if it is add one to occurance variable
#         - if occurence variable is 2 or greater
#           - return false
#           - else return true
#   - see if that block includes each string char

# BLOCKS = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE',
#           'FS', 'JW', 'HU', 'VI', 'LY', 'ZM']
#
# def block_word?(str)
#   BLOCKS.all? do |block|
#     occurences = 0
#     str.upcase.chars.each do |char|
#       occurences += 1 if block.include?(char)
#     end
#     occurences < 2
#   end
# end

# their solution:
#   - initialize str_up variable and assign upcased string to it
#   - iterate through the string blocks in the array
#     - count how many occurances of the block chars are in the string
#       - if it is 2 or more for any of the iterations, then return false

# def block_word?(str)
#   str_up = str.upcase
#
#   BLOCKS.none? { |block| str_up.count(block) >= 2 }
# end

p block_word?('bb')
p block_word?('bo')
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
