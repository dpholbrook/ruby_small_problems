=begin

input: string
output: hash

rules:
  - 3 keys: lowercase, uppercase, neither
  - values are the count of each case
  - spaces?

algorithm:
  - count uppercase letters
  - count lowercase letters
  - subtract those counts from string size

=end

# mine:
def letter_case_count(str)
  case_count = Hash.new(0)

  case_count[:lowercase] = str.count('a-z')
  case_count[:uppercase] = str.count('A-Z')
  case_count[:neither] = str.size - (case_count[:lowercase] + case_count[:uppercase])

  case_count
end

# refactored:
def letter_case_count(str)
  {
    lowercase: str.count('a-z'),
    uppercase: str.count('A-Z'),
    neither: str.count('^A-z')
  }
end





p letter_case_count('abCdef 123')



# input: string
# output: hash
#
# rules:
#   Explicit requirements:
#     - hash has three keys:
#      - lowercase:
#      - uppercase:
#      - neither:
#     - values are the counts of those letters
#
# algorithm:
#
# - scan string for uppercase chars and count them
# - do the same for lower case and non alpha

# my solution:
# def letter_case_count(str)
#   chars = {}
#   chars[:lowercase] = str.scan(/[a-z]/).count
#   chars[:uppercase] = str.scan(/[A-Z]/).count
#   chars[:neither] = str.scan(/[^A-za-z]/).count
#
#   chars
# end

# optimize with help from Bob Rodes
# def letter_case_count(str)
#   {
#     lowercase: str.scan(/[a-z]/).count,
#     uppercase: str.scan(/[A-Z]/).count,
#     neither: str.scan(/[^A-za-z]/).count
#   }
#
# end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
