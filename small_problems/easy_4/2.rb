=begin

input: integer
output: string

rules:
  - return the century of the year
  - use proper ending
    - 'st', 'nd', 'rd', 'th'
  - 20th is 1901 - 2000

algorithm:
  - determine century
    - subtract 1 from year to account for 2000 being 20th century
    - centry is (year / 100) + 1

  - add ending
    - create hash for ending values
    - 11th 12th 13th are weird
      - create guard clause for them
        - if year % == 11, 12, 13 then ending is th
    - otherwise ending is hash value ending is value for key of last digit



1st
2nd
3rd
4th
5th
6th
7th
8th
9th
10th
11th ***
12th ***
13th ***
14th




21st
22nd
23rd
24th





=end

ENDINGS = { '1' => 'st', '2' => 'nd', '3' => 'rd', '4' => 'th',
            '5' => 'th', '6' => 'th', '7' => 'th', '8' => 'th', '9' => 'th', '0' => 'th' }

def century(year)
  century = ((year - 1) / 100) + 1
  add_ending(century)
end

def add_ending(century)
  if century % 100 == 11 || century % 100 == 12 || century % 100 == 13
    ending = 'th'
  else
    ending = ENDINGS[century.to_s[-1]]
  end
  century.to_s + ending
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

#=========================

# def century(year)
#   century = ((year - 1) / 100) + 1
#   century.to_s + century_suffix(century)
# end
#
# def century_suffix(century)
#
#   last_digit = century % 10
#
#   if (11..13).include?(century % 100)
#     'th'
#   else
#     case last_digit
#     when 0 || (4..9) then 'th'
#     when 1 then 'st'
#     when 2 then 'nd'
#     when 3 then 'rd'
#     end
#   end
# end
#
# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
# p century(5) == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

# Alogorithm
# START
# if (11..13)include?(number)
# 'th'
# else
# endings for 1 - 20 = {
#   'th' => [0, 4, 5, 6, 7, 8, 9],
#   'st' => [1],
#   'nd' => [2],
#   'rd' => [3],
# }
# create hash of century endings
# ((year - 1) / 100) + 1 is the century
# if key includes century return key
# concatenate string ending to it
# return century
#
#
#
# method that takes a year and returns a century
#
# Input is a number
# Output is a string
#
# Data structure
# look up number in hash and retieve string ending
# convert number to string and concatenate string ending to it
#
#
# 'th' - 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20
# 'st' - 1
# 'nd' - 2
# 'rd' - 3



# Test Cases
# century(2000) == '20th'
# century(2001) == '21st'
# century(1965) == '20th'
# century(256) == '3rd'
# century(5) == '1st'
# century(10103) == '102nd'
# century(1052) == '11th'
# century(1127) == '12th'
# century(11201) == '113th'
