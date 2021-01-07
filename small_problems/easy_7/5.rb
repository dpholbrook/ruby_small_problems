=begin

input: string
output: string

rules:
  - return a new string
  - every other char is caps starting with first
  - non letters dont change
  - non letters count for every other char

algorthim:
  - initialize result string
  - initialize index counter to 0
  - iterate with a loop
  - reference each char with counter
    - upcase even count chars
    - downcase odd count chars
    - push char to result string
  - return result string

FEX
  - if start == first

=end

# my solution:
def staggered_case(str, start)
  result = ''
  index = 0

  until index == str.size
    if start == 'first'
      index.even? ? result << str[index].upcase : result << str[index].downcase
    elsif start == 'second'
      index.odd? ? result << str[index].upcase : result << str[index].downcase
    end
      index += 1
  end
  result
end


# flash of theirs:
# def staggered_case(str)
#   result = ''
#   need_upper = true
#
#   str.chars.each do |char|
#     need_upper ? result << char.upcase : result << char.downcase
#     need_upper = !need_upper
#   end
#   result
# end

# I chose a loop in order to easily be able to work with every other char
# Their solution accomplishes this with each, using a toggle to do something every other time

p staggered_case('I Love Launch School!', 'second')

# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# input: string
# output: new string
#
# rules:
#   - new string contains original value with ever other character capitalized
#   - non letters remain the same but count as characters when swithing between upper an lower case
#
# algorithm:
#   - downcase the string
#   - split string into array of characters
#   - iterate
#   - if the index is odd, upcase the character
#   - join the characters into a string
#   - return the string

# my solution
# def staggered_case(str)
#   letters = str.downcase.chars
#
#   letters.each_with_index do |char, idx|
#     char.upcase! if idx.even?
#   end
#
#   letters.join
# end

# theirs plus further exploration
# def staggered_case(str, option)
#   result = ''
#
#   if option == 'first'
#     need_upcase = true
#   elsif option == 'second'
#     need_upcase = false
#   else
#     puts 'Please specify whether you would like the first or second character to be upcased.'
#   end
#
#   str.chars.each do |char|
#     if need_upcase
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#
#     need_upcase = !need_upcase
#   end
#   result
# end


# p staggered_case('I Love Launch School!', 'first')

# test cases:
# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
