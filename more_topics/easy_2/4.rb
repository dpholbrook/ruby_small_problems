=begin
  input: undefined list of arguments
  output: number of arguments for which the block returned true

  rules:
    - if list is empty, return 0

  algorithm:
    - define method to take indefinite arguments
    - turn the arguments into a collection
    - init count
    - iterate on the collection
    - pass each value to the block
    - incriment count for every value that the block returns true
    - return count
=end

def count(*args)
  count = 0
  args.each { |value| count += 1 if yield(value) }
  count
end

p count(1, 3, 6) { |value| value.odd? } == 2
p count(1, 3, 6) { |value| value.even? } == 1
p count(1, 3, 6) { |value| value > 6 } == 0
p count(1, 3, 6) { |value| true } == 3
p count() { |value| true } == 0
p count(1, 3, 6) { |value| value - 6 } == 3
