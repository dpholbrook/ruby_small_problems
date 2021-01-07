=begin
  input: collection
  output: boolean

  rules:
    - pass elements of collection to block
    - if block returns true for exactly one element then return true
    - otherwise, return false
    - stop execution if block returns second true
    - if col is empty, return false

  algorithm:
    - init counter
    - if yield to block is true
      incriment counter
    - as soon as counter is 2, return false
    - otherwise, return true
=end

# def one?(collection)
#   trues = 0
#
#   collection.each do |element|
#     trues += 1 if yield(element)
#     return false if trues == 2
#   end
#
#   trues == 1
# end

def one?(collection)
  one = false

  collection.each do |element|
    next if !yield(element)
    return false if one
    one = !one
  end

  one
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false
