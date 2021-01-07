=begin
  input: collection
  output: boolean

  rules:
    - return true if block returns false for all elements
    - otherwise return false
    - stop processing if block returns true
    - if array is empty, return true

  algorithm:
    - pass each element to the block
    - if block returns a truthy value, end execution and return false
    - otherwise return true
=end

# def none?(arr)
#   arr.each { |e| return false if yield(e) }
#   true
# end

# using a proc:
#
# def any?(arr, block)
#   idx = 0
#
#   while idx < arr.size
#     return true if block.call(arr[idx])
#     idx += 1
#   end
#
#   false
# end
#
# def none?(collection, &block)
#   !any?(collection, block)
# end

def any?(arr)
  idx = 0

  while idx < arr.size
    return true if yield(arr[idx])
    idx += 1
  end

  false
end

def none?(collection, &block)
  !any?(collection, &block)
end

# none is defined to require a block
# it converts the block into a proc object which saved to the method local variable 'block'
# we then convert the proc into a block with the proc to block operator & and pass that block to any?
# it seems that this is another way to pass a method a block
# so !any(colleciton, &block) is the same as !any(collection) {}

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true
