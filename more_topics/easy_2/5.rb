=begin
  input: collection
  output: collection of value that returned false and all of the following elements

  rules:
    - if arr empty or every element returns truthy value, return empty arr

  alogrithm:
    - iterate on collection
    - next if block returns truthy value
    - if block returns falsey value, return [current_index..-1] to
    - otherwise return []
=end

def drop_while(arr)
  arr.each_with_index { |value, idx| return arr[idx..-1] unless yield(value) }
  []
end

p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []
