=begin

input: string
output: boolean

rules:
  - use palindrome? method
  - case insensitive
  - ignore non alpha char

algorithm:
  - initialize new string
    - select only alpha chars and downcase



=end

def palindrome?(str)
  str.reverse == str
end

def real_palindrome?(str)
  alpha = str.chars.select { |char| char =~ /[A-z]/ }
  palindrome?(alpha.join.downcase)
end

real_palindrome?('123ab321')

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false


# def palindrome?(string)
#   string.reverse == string
# end
#
# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   p string
#   palindrome?(string)
# end
#
#
# p real_palindrome?('madam') == true
# p real_palindrome?('Madam') == true           # (case does not matter)
# p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
# p real_palindrome?('356653') == true
# p real_palindrome?('356a653') == true
# p real_palindrome?('123ab321') == false
