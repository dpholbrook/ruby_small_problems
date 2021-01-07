=begin
  input: array
  output: nil

  rules:
    - create an each_cons method that takes two arguments: a number and an array
    - passes each consecutive slice of elements to the block
      - slice size is determined by argument passed to each_cons
    - return nil

  algorithm:
    - define method to take size and array
    - start = 0
    - while first + size < arr.size
      - take [first, size] slice
      - yield each element to the block
      - incriment start counter
    - return nil

=end

def each_cons(arr, slice_size)
  start_idx = 0
  until start_idx + slice_size > arr.size
    slice = arr[start_idx, slice_size]
    yield(slice)
    start_idx += 1
  end

  nil
end

# here *slice turns the slice into a list which we can assign individual block variables to
#


# hash = {}
# each_cons([1, 3, 6, 10], 1) do |value|
#   hash[value] = true
# end
# p hash
# p hash == { 1 => true, 3 => true, 6 => true, 10 => true }

# hash = {}
# each_cons([1, 3, 6, 10], 2) do |value1, value2|
#   hash[value1] = value2
# end
# p hash
# p hash == { 1 => 3, 3 => 6, 6 => 10 }
#
# hash = {}
# each_cons([1, 3, 6, 10], 3) do |value1, *values|
#   hash[value1] = values
# end
# p hash
# p hash == { 1 => [3, 6], 3 => [6, 10] }
#
hash = {}
each_cons([1, 3, 6, 10], 4) do |value1, *values|
  hash[value1] = values
end
p hash == { 1 => [3, 6, 10] }
#
hash = {}
each_cons([1, 3, 6, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash == {}
#
hash = {}
each_cons([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5) do |value1, *values|
  hash[value1] = values
end
p hash
