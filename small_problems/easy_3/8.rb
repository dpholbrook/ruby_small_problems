=begin

input: string
output: boolean

rules:
  - return true if string is palindrome
    - same forward as backward
  - case and punctuation sensitive

algorithm:
  - see if string reverse == string

=end

def palindrome?(str)
  str.reverse == str
end




p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
p palindrome?([1, 2, 3]) == false
p palindrome?([1, 2, 1]) == true





# p palindrome?([1, 2, 3, 2, 1]) # true
# p palindrome?([1, 2, 3, 2, 2]) # false
# p palindrome?('madam')
# p palindrome?('scooby')
#
# index is -1
# while object length is >= absolute value of index
#   << object[-1]


#---------------------------------------------------
# def palindrome?(array)
#   array_string = array.join
#   array_string.reverse == array_string
# end
#
# p palindrome?([1, 2, 3, 2, 1])
# p palindrome?([1, 2, 3, 2, 2])

# get array
# join array into a string
# if reverse of string equals string then true
#---------------------------------------------------
#
# def palindrome?(string)
#   string.reverse == string
# end
#
# p palindrome?('madam') == true
# p palindrome?('Madam') == false          # (case matters)
# p palindrome?("madam i'm adam") == false # (all characters matter)
# p palindrome?('356653') == true
