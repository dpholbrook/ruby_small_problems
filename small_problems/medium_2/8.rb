# this is a good problem for logic
# I handled it well in 10 - 15 minutes
# optional

=begin

input: number
output: number or string

rules:
  - featured number
    - odd
    - num % 7 == 0
    - digits occur once each

  - return next featured number after input number
  - issue error message if there is no next featured number

algorithm:
  - start a loop
  - incriment input number by 1
  - if number meets featured condition
    - return number


=end

# def generate_featured
#
# end
#
# featured = []
#
# 1.upto(100) do |num|
#   featured << num if num.odd? && num % 7 == 0 && num.digits.uniq == num.digits
# end
#
# p featured

# def featured(num)
#   return "There is no featured number bigger than that number." if num > 987654321
#
#   loop do
#     num += 1
#     return num if num.odd? && num % 7 == 0 && num.digits.uniq == num.digits
#   end
# end

# input: integer
# output: integer
#
# rules:
#   - output is a featured number
#     - multiple of 7
#     - odd
#     - each digit occures only once
#
#   - return next featured number greater than intger input
#   - return error message if there is no next featured number
#
# algorithm:
#   - check for duplicate integers
#     - convert integer to string
#     - 1 to 9 loop
#       - if count of number = 2 then return false


# def no_dup?(int)
#   0.upto(9) do |num|
#     if int.to_s.count(num.to_s) >= 2
#       return false
#     end
#   end
# end

# def featured(int)
#   int += 1
#   count = 0
#   until (int % 7 == 0 && int.odd? && no_dup?(int))
#     int += 1
#     count += 1
#     return "There is no possible number that fulfills those requirements." if count == 10_000_000
#   end
#
#   int
# end

#refactored from their solution:
# def featured(int)
#   int += 1
#   until (int % 7 == 0 && int.odd? && no_dup?(int))
#     int += 1
#     if int > 987_654_321
#       return "There is no possible number that fulfills those requirements."
#     end
#   end
#
#   int
# end




#
#   - enter a loop (until remainder of n over 7 is 0 and n is odd and no duplicate integers)
#     - increment n by 1

# test cases:
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
