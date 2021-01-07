=begin
  input: array
  output: new, transformed array

  rules:
    - return array with same number of elements
    - if array is empty, return empty array

  algorithm:
    - init transformed_array
    - iterate through array
      - pass current value to the block
      - push the return value of the block to transformed_array
    - return transformed array
=end

def map(arr)
  arr.each_with_object([]) { |value, obj| obj << yield(value) }
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
# p map({1 => 'a', 2 => 'b'}) { |obj, key, value| [value, key += 10] }

# a = {drew: 33, molly: 27}.map do |k, v|
#   "#{k} is #{v}"
# end
#
# p a
