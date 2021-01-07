# input: number
# output: number
#
# rules:
#   - find multiples of 3 or 5 that lie between 1 and input number
#   - sum those multiples
#   - assume input is integer greater than 1
#
#   ex: input: 20 output: 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20)
#
# algorithm:
#   - initialize multiples array
#   - 1 upto the input
#     - push num to array if divisble by 3 or 5
#     - sum array
#
# data structure:
#   - iterate on numbers
#   - push to array
#   - return integer


# def multisum(num)
#   multiples = []
#   1.upto(num) do |count|
#     multiples << count if count % 3 == 0 || count % 5 == 0
#   end
#   multiples.inject(:+)
# end

def multisum(num)
  multiples = (1..num).select { |num| num % 3 == 0 || num % 5 == 0 }
  multiples.reduce(:+)
end



# ========================





# def multisum(number)
#   multiples(number).reduce(:+)
# end
#
# def multiples(number)
#   multiples = (1..number).select { |num| num % 3 == 0 || num % 5 == 0 }
# end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

# Algorithm
#
# START
# SET multiples array
# SET range
#   iterate on range
#   if x % 3 == 0 || x % 5 == 0
#     multiples << x
# multiples.reduce(:+)
# END
#
#
# get number
# create empty array multiples
# make range from 1 to number
# iterate on range
# if x % 3 == 0 || x % 5 == 0
#   push x to multiples array
# sum multiples array
# return sum
#
#
# input = num
# find all multiples of 3 and 5 between input and num
# output return sum of those multiples
#
# For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
