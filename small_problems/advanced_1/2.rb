=begin

input: integer
output: 8 pointed star

rules:
  - n is an odd integer
  - n >= 7
  - all points are n stars wide
  - horizontal middle is n stars wide
  - row above is centered and three stars wide
  - there are (n/2) - 1 rows above that
    - each of those rows has three stars
      - first has one space between stars
      - second has two
      - etc
      - top row has no padding
      - next down has one space, then two, etc
  - bottom has the same pattern

algorithm:
  - print top
    - there are (n/2) -1 rows above the middle three rows
    - count down from number of top rows
      - spaces = ' ' * countdown
      - padding = ' ' * (top_rows - countdown)
      - print padding stars and spaces

  - print bottom
    - there are (n/2) -1 rows below the middle three rows
    - count up to number of bottom rows
      - padding = ' ' * (bottom_rows - count)
      - spaces = ' ' * count
      - print padding stars and spaces

  - print middle
    - print n stars
    - print three stars above and below with (n-3)/2 spaces on either side

=end

def print_top(num)
  top_rows = (num/2) - 1
  top_rows.downto(1) do |countdown|
    spaces = ' ' * countdown
    padding = ' ' * (top_rows - countdown)
    puts "#{padding}*#{spaces}*#{spaces}*#{padding}"
  end
end

def print_bottom(num)
  bottom_rows = (num/2) - 1
  1.upto(bottom_rows) do |count|
    padding = ' ' * (bottom_rows - count)
    spaces = ' ' * (count)
    puts "#{padding}*#{spaces}*#{spaces}*#{padding}"
  end
end

def print_middle(num)
  spaces = ' ' * ((num-3)/2)
  stars = '*' * (num)
  puts "#{spaces}***#{spaces}"
  puts "#{stars}"
  puts "#{spaces}***#{spaces}"
end

def star(num)
  print_top(num)
  print_middle(num)
  print_bottom(num)
end

star(21)

# star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

# star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *
