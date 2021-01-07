

# count = 2
#
# while count < 100
#   puts count
#   count += 2
# end

# for i in (1..99)
#   puts i if i.even?
# end

1.upto(99) { |num| puts num if num.even? }

#solved with these 4 methods:

# arr = (2..98).to_a.select { |i| i.even? }
# puts arr

# 2.upto(98) { |i| puts i if i.even? }

# for i in (1..99)
#   if i.even?
#     puts i
#   end
# end

# counter = 2
#
# while counter <= 98
#   puts counter
#   counter +=2
# end
