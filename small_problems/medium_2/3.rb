# this went quit well, solved fairly quickly even after restarting when I figured out a better way
# my solution is actually quite short and simple compared to theirs

=begin

input: string
output: hash

rules:
  - three keys
  - percentage lowercase
  - uppercase
  - neither
  - string will contain at least one char

algorithm:
  - init hash
  - init  upper, lower, neither vars

  - split string into array of chars
  - iterate on arry of characters
    - if char is nonalpha, incriment neither in hash
    - if char is lowercase incrinment lower
    - if char is upper incriment upper

=end

def calculate_percent(str, criteria)
  size = str.size.to_f
  percent = str.count(criteria)/size * 100
  percent.round(2)
end

def letter_percentages(str)
  percentages = {
                  lowercase: calculate_percent(str, 'a-z'),
                  uppercase: calculate_percent(str, 'A-Z'),
                  neither: calculate_percent(str, '^A-z')
                }
end





# input: string
# output: hash
#
# rules:
#   - three keys in hash
#     - uppercase
#     - lowercase
#     - neither
#     - string will have at least one char

# algorithm:
  # - initialize count variables
  # - split string into array of chars
  #   - if char is not alpha, increment neither value
  #   - else
  #     - if char == its upcased version?
  #     - increment upcase value by one
  #     - if char == char.downcase
  #       - increment downcase value by one
  # - sum count variables and divide count value by total
  #   - assign to percentage variables
  #   - create hash with percentage variables as values
  #   - return hash

# def letter_percentages(str)
#   uppercase_count = 0
#   lowercase_count = 0
#   neither_count = 0
#
#   str.chars.each do |char|
#     if char =~ /[A-Z]/
#       uppercase_count += 1
#     elsif char =~ /[a-z]/
#       lowercase_count += 1
#     else
#       neither_count += 1
#     end
#   end
#
#   total = uppercase_count + lowercase_count + neither_count
#   uppercase_percent = (uppercase_count / total.to_f) * 100
#   lowercase_percent = (lowercase_count / total.to_f) * 100
#   neither_percent = (neither_count / total.to_f) * 100
#
#   hash = {lowercase: lowercase_percent, uppercase: uppercase_percent,
#           neither: neither_percent}
#
# end

# go at their solution:

# def letter_percentages(str)
#   counts = {lowercase: 0, uppercase: 0, neither: 0}
#   percentages = {lowercase: [], uppercase: [], neither: []}
#   length = str.size
#
#   counts[:lowercase] = str.chars.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = str.chars.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = str.chars.count { |char| char =~ /[^A-Za-z]/ }
#
#   calculate_percentages(percentages, counts, length)
#
#   percentages
# end
#
# def calculate_percentages(percentages, counts, length)
#   percentages[:lowercase] = format('%.2f', (counts[:lowercase] / length.to_f) * 100)
#   percentages[:uppercase] = format('%.2f', (counts[:uppercase] / length.to_f) * 100)
#   percentages[:neither] = format('%.2f', (counts[:neither] / length.to_f) * 100)
#
#
# end

p letter_percentages('abcdefGHI')
p letter_percentages('abCdef 123')
p letter_percentages('AbCd +Ef')
p letter_percentages('123')

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
