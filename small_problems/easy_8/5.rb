=begin

input: string
output: array of substrings that are palindromes

rules:
  - palindromes are in order of occurance
  - palindrome is same forward as backward
  - case sensitive
  - consider all chars (not just alpha)
  - include duplicate palindromes
  - single chars are not palindromes

alorithm:
  - pass string to substrings method
    - return value is array of all substrings
    - check if each substring is a palindrome
      - str == str.reverse
    - if it is, select it
  - return array of selected palindromes

=end

# def palindromes(str)
#   substrings = substrings(str)
#   substrings.select do |substring|
#     palindrome?(substring)
#   end
# end
#
# def palindrome?(str)
#   str == str.reverse && str.size > 1
# end
#
# def substrings_at_start(str)
#   substrings = []
#   idx = 0
#
#   loop do
#     substrings << str[0..idx]
#     idx += 1
#     break if idx >= str.size
#   end
#   substrings
# end
#
# def substrings(str)
#   substrings = []
#   idx = 0
#
#   loop do
#     substrings += substrings_at_start(str[idx..-1])
#     idx += 1
#     break if idx >= str.size
#   end
#   substrings
# end
#
#
# p palindromes('madam')
#
#
# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

def palindromes(str)
  substrings = substrings(str)
  substrings.select do |substring|
    palindrome?(substring)
  end
end

def palindrome?(str)
  str == str.reverse && str.size > 1
end

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
  substrings.map do |substring|
    substring.delete!('^A-z0-9')
    substring
  end
end



# p substrings('hello-madam-did-madam-goodbye')
p palindromes('hello-madam-did-madam-goodbye')

# input: string
# output: array of palindromic substrings
#
# rules:
#   - palindrome is same sequence of characters forwards as backwards
#   - include duplicate palindromes
#   - use substrings method
#   - consider all characters
#   - case sensitive
#   - single chars are not palindromes
#
# algorithm
# - use substrings method to create an array of all stubstrings
  # - find palindromes
  #   - initialize empty palindrome array
  #   - iterate on substrings array
  #   - if sub_str length is < 2 and substring reversed equals substring
  #     - then push substring to palindrome array
  #   - return palindrome array

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
#     current_string = str[index_start..-1].downcase
#     result.concat(substrings_at_start(current_string))
#   end
#   result
# end
#
# def palindromes(str)
#   palindromes = []
#   substrings(str).each do |sub_str|
#     alpha_num_substr_arr = sub_str.chars.select do |char|
#       char =~ /[a-z0-9]/
#     end
#     alpha_num_substr = alpha_num_substr_arr.join
# binding.pry
#     if alpha_num_substr.size > 1 && alpha_num_substr == alpha_num_substr
#       palindromes << sub_str
#     end
#   end
#   palindromes
# end


# FEX
  # - modify methods to ignore case and non alpha numeric
  # - downcase substrings in substrings method
  # - palindrome method ignores non alphanum chars when checking to see if palindrome
  #   - iterate on array of chars for each substring
  #   - return only chars that are alpha num
  #   - then check to see if palindrome



# p palindromes('ma*d-am')
# p palindromes('abcd')
# p palindromes('madam')

# p palindromes('hello-madam-did-madam-goodbye')

# p palindromes('knitting cassettes')
#
# p palindromes('abcd') == []
# p palindromes('Madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
