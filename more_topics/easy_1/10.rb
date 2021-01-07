=begin
  input: array
  output: count of number of times that the block returns true

  rules:
    - pass each element of array to block
    - return the count for each element for which the block returns true
    - return 0 for empty array

  algorithm:
    - init counter
    - pass each element to the block
    - incriment counter every time the block returns true
    - return counter
=end
#
# def count(arr)
#   counter = 0
#   arr.each { |element| counter += 1 if yield(element) }
#   counter
# end
#
# p count([1,2,3,4,5]) { |value| value.odd? } == 3
# p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
# p count([1,2,3,4,5]) { |value| true } == 5
# p count([1,2,3,4,5]) { |value| false } == 0
# p count([]) { |value| value.even? } == 0
# p count(%w(Four score and seven)) { |value| value.size == 5 } == 2

def step(lower, upper, step)
  lower = lower
  until lower > upper
    yield(lower)
    lower += step
  end

end

step(1, 10, 3) { |value| puts "value = #{value}" }
