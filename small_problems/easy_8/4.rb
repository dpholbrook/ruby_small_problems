=begin

input: string
output: array of all substrings

rules:
  - ordered by first letter
  - ordered short to long

algorithm:
  - initialize idx to 0
  - initialize substrings array
  - iterate on the string with a loop
  - pass str[0..-1] to existing method
  - push array of substrings to substrings array
  - [1..-1]
  - do that until idx = str.size - 1
  - flatten and return array

=end

def substrings_at_start(str)
  substrings = []
  idx = 0

  loop do
    substrings << str[0..idx]
    idx += 1
    break if idx >= str.size
  end
  substrings
end

def substrings(str)
  substrings = []
  idx = 0

  loop do
    substrings += substrings_at_start(str[idx..-1])
    idx += 1
    break if idx >= str.size
  end
  substrings
end

# input: string
# output: array of all substrings
#
# rules:
#   - ordered by where in the string, the substrings begin
#   - substrings from each position should be ordered shortest to longest
#   - use substrings_at_start method


# algorithm:
#   - use substrings_at_start method to select all substrings starting at index 0
#   - call upto string size -1 with 0 then 1 upto string size -1

# my solution:
#
# def substrings_at_start(str, start)
#   substrings = []
#
#   start.upto(str.size - 1) do |index|
#     substrings << str.slice(start..index)
#   end
#   substrings
# end
#
# def substrings(str)
#   all_substrings = []
#   0.upto(str.size - 1) do |start|
#     all_substrings << substrings_at_start(str, start)
#   end
#   all_substrings.flatten
# end

# This one took me hours and hours.
# Key takaways:
#   - break into smaller problems
#     - use the simple substrings_at_start method
#     - then, just make a method where you pass substrings to that method
#       - ^^^ this is key and could have been thought of in algorithm stage
#         - would have made the problem easy
#         - would have been very creative and out of the box thinking
#         - was not my line of thinking at all
#         - i was stuck in the rut
#   - when they say to use a method you made, figure out how to use it, dont change it at all


# flash of theirs:
# def substrings_at_start(str)
#   substrings = []
#
#   0.upto(str.size - 1) do |index|
#     substrings << str.slice(0..index)
#   end
#   substrings
# end
#
# def substrings(str)
#   result = []
#   0.upto(str.size - 1) do |index_start|
#     current_string = str[index_start..-1]
#     result.concat(substrings_at_start(current_string))
#   end
#   result
# end

p substrings('abcde')
#
# # test case:
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
