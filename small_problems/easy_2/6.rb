# for i in (1..99)
#   puts i if i.odd?
# end

# counter = 1
# while counter <= 99
#   puts counter
#   counter += 2
# end

# counter = 1
# until counter == 100
#   puts counter
#   counter += 2
# end

# (1..99).each { |num| puts num if num.odd? }

puts (1..99).select { |num| num.odd? }

#===============================================

#solved with all of the following methods:

# arr = (1..99).to_a
# arr = arr.select { |i| i.odd? }
# puts arr


# 1.upto(99) {|i| puts i if i.odd?}


# counter = 1
#
# while counter <= 99
#   puts counter
#   counter += 2
# end
#



# for i in (1..99) do
#   if i.odd?
#     puts i
#   end
# end





# print all odd numbers between 1 and 99 inclusive
# on separate lines
