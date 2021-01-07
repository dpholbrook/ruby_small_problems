=begin
  input: collection
  output: boolean

  rules:
    - write all? method that returns true if block returns true for all elements in a collection
    - as soon as block returns false, stop execution and return false
    - if array is empty, return true

  algorithm:
    - pass each element of the collection to the block
    - if the block returns false, return false
    - otherwise, return true
=end


def all?(col)
  col.each { |e| return false unless yield(e) }
  true
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true
