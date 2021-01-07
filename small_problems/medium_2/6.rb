=begin

input: three integers
output: a symbol

rules:
  - :invalid if sum of angles != 180 or angle <= 0
  - :right if one angle == 90
  - :acute if all three angles are < 90
  - :obtuse if an angle is > 90

algorithm:
  - determine if triangle is valid, if not, return :invalid
  - determine what kind of triangle it is

=end

def triangle(a, b, c)
  angles = [a, b, c]

  case
  when angles.sum != 180, angles.any? { |angle| angle <= 0 } then :invalid
  when angles.include?(90)                                   then :right
  when angles.any? { |angle| angle > 90 }                    then :obtuse
  else                                                            :acute
  end
end

# input: three integers
# output: :right, :acute, :obtuse, or :invalid
#
# rules:
#   - right
#     - one angle is 90
#   - acute
#     - all angeles are less than 90
#   - obtuse
#     - one angle is greater than 90
#
#   - valid triangle
#     - sum of integers must be 180
#     - integers greater than 0


# def triangle(a, b, c)
#   angles = [a, b, c]
#   case
#   when angles.inject(:+) != 180, angles.include?(0)
#     :invalid
#   when angles.all? { |angle| angle < 90 }
#     :acute
#   when angles.any? { |angle| angle > 90 }
#     :obtuse
#   when angles.include?(90)
#     :right
#   end
# end

# test cases:
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
