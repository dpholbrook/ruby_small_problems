=begin

input: number
output: triangle

rules:
  - right triangle on right side
  - sides are n long

algorithm:
  - print line n times
  - line is n - counter * spaces + star

=end


def triangle(num)
  1.upto(num) do |count|
    puts ' ' * (num - count) + '*' * count
  end
end

triangle(5)

# input: positive integer n
# output: a right triangle
#
# rules:
#     Exlplicit requirements
#       - sides have n stars
#       - hypotenuse goes from lower left to upper right

# algorithm:
# counter = 1
# enter loop
# spaces is ' ' * (n - counter)
# stars is '*' * counter
# puts spaces + stars
# counter += counter
# break if counter == n

# def triangle(num)
#   counter = 1
#   loop do
#     break if counter == num
#     spaces = ' ' * (num - counter)
#     stars = '*' * (counter)
#     puts spaces + stars
#     counter += 1
#   end
# end

#further exploration
# def triangle(num)
#   counter = 0
#   num.times do
#     stars = '*' * (num - counter)
#     spaces = ' ' * counter
#     puts spaces + stars
#     counter += 1
#   end
# end

# triangle(5)
