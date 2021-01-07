=begin

input: number
output: number

rules:
  - return the number of friday the 13ths in the given year

algorithm:

- create a time object that is the 13th day of the given year
- do this for all 12 months
- check to see if that day is friday
- count the number of days that are friday

- count the number of days that are 13 and friday

=end

# def friday_13th(year)
#   count = 0
#
#   1.upto(12) do |month|
#     count += 1 if Time.new(year, month, 13).friday?
#   end
#   count
# end

def friday_13th(year)
  count = 0

  1.upto(12) do |month|
    count += 1 if Time.new(year, month, 13).friday?
  end
  count
end





# input: integer
# output: integer
#
# rules:
#   - output is the number of friday the 13ths in the input year
#   - assume year is greater than 1752
#
# algorithm:
#   - initialize fri_thirteenth counter
#   - enter loop - count to 12 for each month
#     - initialize variable day and assign it to input year, count, 13
#     - check to see if that day was friday
#       - if it was, increment counter
#   - exit loop
#   - return counter

# def friday_13th(year)
#   count = 0
#
#   1.upto(12) do |month|
#     day = Time.new(year, month, 13)
#     count += 1 if day.friday?
#   end
#
#   count
# end

# test cases:
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
