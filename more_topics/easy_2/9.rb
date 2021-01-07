=begin
  input: array
  output: nil

  rules:
    - create an each_cons method that passes each consecutive two element pair to the block
    - array and block arguments
    - return nil

  algorithm:
    - loop through collection
    - while start is less than arr.size - 1
      - take slice at start that is 2 long
      - yield each element to the block
      - incriment start counter
    - return nil

=end

def each_cons(arr)
  start = 0
  while start < arr.size - 1
    slice = arr[start, 2]
    yield(slice.first, slice.last)
    start += 1
  end

  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil
