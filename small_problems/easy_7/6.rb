=begin

input: string
output: string

rules:
  - ignore non alpha chars but still return them

algorithm:
  - only toggle if iterating over an alpha char
=end

# def staggered_case(str)
#   result = ''
#   need_upper = true
#
#   str.chars.each do |char|
#     need_upper ? result << char.upcase : result << char.downcase
#     need_upper = char =~ /[A-z]/ ? !need_upper : need_upper
#   end
#   result
# end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'



# input: string
# output: new string
#
# rules:
#   - new string contains original value with ever other character capitalized
#   - non letters remain the same but DO NOT count as characters when swithing between upper an lower case
#
# algorithm:
#   - downcase the string
#   - split string into array of characters
#   - upcase first char in array
#   - counter = 2
#   - loop
#     - if the element before the current element == upcased, go to next iteration
#     - else upcase the current character
#     - increment counter by 1
#   - join the characters into a string
#   - return the string

# def staggered_case(str)
#     chars = str.downcase.chars
#     chars[0].upcase
#
#     counter = 1
#     loop do
#       counter += 1
#       break if counter == chars.size
#       next if chars[counter - 1] == chars[counter - 1].upcase
#       p chars[counter].upcase
#
#
#     end
#
# chars.join
# end

# algorithm
# split string into downcased array of characters
# initialize alpha array
# initialize staggered to empty string
# upcase = true
# iterate on array
# if list of alpha includes char
#   if upcase is true, then upcase char and add char to staggered string
#     toggle upcase
#   else dont upcase and add char to staggered string
      # toggle upcase
# else add char to staggered string

# def staggered_case(str)
#   staggered = ''
#   alpha = ('a'..'z').to_a
#   upcase = true
#
#   str.downcase.chars.each do |char|
#     if alpha.include?(char)
#       if upcase
#         staggered += char.upcase
#       else
#         staggered += char
#       end
#       upcase = !upcase
#     else
#       staggered += char
#     end
#   end
#   staggered
# end

# p staggered_case('I Love Launch School!')
#
# # test cases
# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# FEX
# def stagger_all_chars(str)
#   letters = str.downcase.chars
#
#   letters.each_with_index do |char, idx|
#     char.upcase! if idx.even?
#   end
#
#   letters.join
# end
#
# def stagger_alpha(str)
#   staggered = ''
#   alpha = ('a'..'z').to_a
#   upcase = true
#
#   str.downcase.chars.each do |char|
#     if alpha.include?(char)
#       if upcase
#         staggered += char.upcase
#       else
#         staggered += char
#       end
#       upcase = !upcase
#     else
#       staggered += char
#     end
#   end
#   staggered
# end
#
#
# def staggered_case(str, all_chars)
#   if all_chars == 'yes'
#     stagger_all_chars(str)
#   elsif all_chars == 'no'
#     stagger_alpha(str)
#   end
# end




#
# p staggered_case('I Love Launch School!', 'yes')
# p staggered_case('I Love Launch School!', 'no')

# test cases
# p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
# p staggered_case('ALL CAPS') == 'AlL cApS'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
