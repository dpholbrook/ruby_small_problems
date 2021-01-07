# it appears that we are trying to return an array of squared numbers if the array has more than one element
# to do that, we need to provide the condition array.size > 1 to the elsif part of the statement
# i was unsure why an elsif branch will return nil if not provided with a conditional expression
# but its interesting to know that ruby will find the next expression and evalute its truthiness
# a good bug to know about


# def my_method(array)
def my_method(array)
  if array.empty?
    []
  elsif array.size > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# def check(num)
#   if num == 1
#     '1'
#   elsif
#     'greater than 1'
#     'not one, but not necesarily greater than 1'
#   else num < 1
#     'less than 1'
#
#   end
# end
#
# p check(-2)
# p check(1)
# p check(2)
