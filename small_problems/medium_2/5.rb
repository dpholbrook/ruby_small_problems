=begin

input: three integers
output: symbol: :equilateral, :scalene, :isosceles, or :invalid

rules:
  - use the three side to determine if the triangle is
    - :equilateral
      3 sides equal
    - :scalene
      - 3 sides different
    - :isosceles
      - 2 sides equal, 3rd different
    - :invalid
      - sum of shortes sides < longest side
      - any side <= 0

algorithm:
  - create array of input numbers
  - if any of the input numbers are <= 0
    - then :invalid
  - if first two from sorted array of input numbers are not greater than 3rd
    - then :invalid
  - if a == b == c then :equilateral
  - if a == b || a == c || b == c then :isosceles
  - else scalene

=end

def triangle(a, b, c)
  sides = [a, b, c].sort
  case
  when sides.include?(0), sides[0] + sides[1] <= sides[2] then :invalid
  when a == b && b == c                                   then :equilateral
  when a == b || a ==c || b == c                          then :isosceles
  else                                                         :scalene
  end
end

# def triangle(a, b, c)
#   sides = [a, b, c].sort
#
#   if sides.include?(0)
#     :invalid
#   elsif sides[0] + sides[1] <= sides[2]
#     :invalid
#   elsif a == b && b == c
#     :equilateral
#   elsif a == b || a ==c || b == c
#     :isosceles
#   else
#     :scalene
#   end
# end


# input: three integers
# output: :equilateral, :isosceles, :scalene, or :invalid
#
# rules:
#   - euilateral
#     - all three integers are equal
#   - isosceles
#     - two of the integers are equal
#   - scalene
#     - none of the integers are equal
#
#   - valid triangle
#     - smaller integers must sum to greater than biggest integer
#     - each integer must be greater than 0
# #
# algorithm:
#
#   - greater than 0 method
#     - true if a > 0 && b > 0 && c > 0
#
#   - legths method
#     - return true if equilateral
#     - sort array of integers
#       - sum of first and second greater than third?
#
#
#   - triangle type method
#     - :equilateral if a == b && b == c
#     - :isosceles if a == b || a == c || b == c
#     - :scalene if (a != b) && (a != c) && (c != b)
#
#   - triangle method
#     - if greater than 0 && lengths
#         triangle type
#       else
#         return :invalid

# def triangle_type(a, b, c)
#   if a == b && b == c
#     :equilateral
#   elsif a == b || a == c || b == c
#     :isosceles
#   elsif (a != b) && (a != c) && (c != b)
#     :scalene
#   end
# end
#
# def greater_than_zero?(a, b, c)
#   [a, b, c].all? { |side| side > 0 }
# end
#
# def valid_triangle?(a, b, c)
#   ordered_sides = [a, b, c].sort
#
#   if triangle_type(a, b, c) == :equilateral
#     return true
#   else
#     ordered_sides[0] + ordered_sides[1] > ordered_sides[2]
#   end
# end
#
# def triangle(a, b, c)
#   if greater_than_zero?(a, b, c) && valid_triangle?(a, b, c)
#     triangle_type(a, b, c)
#   else
#     :invalid
#   end
# end

# p triangle_type(3, 3, 3)




# test cases:
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
