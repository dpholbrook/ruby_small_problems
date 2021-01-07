=begin

input: integer
output: diamond

rules:
  - input n is odd integer
  - diamond is n tall and n wide

algorithm:
  - print row n times
  - first row
    - blank = n/2
    - blank
    - blank * spaces + star + blank * spaces
    - blank - 1
  -

=end

def diamond(n)
  blank = n/2
  blank.downto(1) do |countdown|
    puts ' ' *
  end
end

def line(n)

end



# input: odd integer
# output: 4 pointed diamond
#
# algorithm:
#   - top portion of diamond:
#     - begin loop count counting from 1 up to the input integer
#       - initialize spaces to ' ' * (integer - count) / 2
#       - initialize stars to '*' * count
#     - print out spaces + stars + spaces if the count is odd
#   - bottom portion
#     - begin loop, counting down from integer -1
#       - initialize spaces and stars
#       - print out spaces and stars if the count is odd
#     - end loop

# def print_row(spaces,stars)
#   puts  spaces + stars + spaces
# end
#
# def diamond(num)
#   puts ''
#   1.upto(num) do |count|
#     spaces = ' ' * ((num - count) / 2)
#     stars = '*' * count
#     print_row(spaces, stars) if count.odd?
#   end
#   (num - 1).downto(1) do |count|
#     spaces = ' ' * ((num - count) / 2)
#     stars = '*' * count
#     print_row(spaces,stars) if count.odd?
#   end
# end

# def print_row(grid_size, distance_from_center)
#   number_of_stars = grid_size - 2 * distance_from_center
#   stars = '*' * number_of_stars
#   puts stars.center(grid_size)
#
# end
#
# def diamond(grid_size)
#   max_distance = (grid_size - 1) / 2
#   max_distance.downto(0) { |distance| print_row(grid_size, distance) }
#   1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
#
# end

#
# test cases:

#
#  *
# ***
#  *

diamond(9)



#
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
