=begin
  input: array
  output: the element for which the block returns the largest value

  rules:
    - return nil if array is empty

  algorithm:
    - init result array
    - iterate on collection passing each element to the block
    - push a sub array of the return value of the block and the element to result array
    - return element whos result is the biggest

    - init max var to yield(first item)
    - iterate through collection
      - check to see if yield current value is greater than max
        - if so, max = yield current value and value = current value
        - return value
=end

# def max_by(arr)
#   return nil if arr.empty?
#   result = []
#   arr.each { |item| result << [item, yield(item)]}
#   result.sort_by { |sub_arr| sub_arr[1] }.last[0]
# end

# def max_by(arr)
#   return nil if arr.empty?
#   result = {}
#   arr.each { |item| result[item] = yield(item) }
#   result.sort_by { |k, v| v }.last.first
# end

def max_by(arr)
  return nil if arr.empty?

  max = yield(arr[0])
  max_value = arr[0]

  arr.each do |value|
    if yield(value) > max
      max = yield(value)
      max_value = value
    end
  end

  max_value
end


# def max_by(arr)
#   return nil if arr.empty?
#   yielded = []
#
#   arr.each do |e|
#     yielded << [e, yield(e)]
#   end
#   yielded.sort_by { |arr| arr.last }.last.first
# end

p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil
