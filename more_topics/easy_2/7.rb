=begin
  - input: array and an object
  - output: return the final value of the object

  - rules:
    - yield each element and the object to the block
    - if the array is empty, return the original object

  - algorithm:
    - define method to take array and object
    - iterate through the array
      - pass each element and the object to the block
    - return the object
=end

def each_with_object(arr, obj)
  arr.each { |value| yield(value, obj) }
  obj
end

result = each_with_object([1, 3, 5], []) do |value, list|
  list << value**2
end
p result == [1, 9, 25]

result = each_with_object([1, 3, 5], []) do |value, list|
  list << (1..value).to_a
end
p result == [[1], [1, 2, 3], [1, 2, 3, 4, 5]]

result = each_with_object([1, 3, 5], {}) do |value, hash|
  hash[value] = value**2
end
p result == { 1 => 1, 3 => 9, 5 => 25 }

result = each_with_object([], {}) do |value, hash|
  hash[value] = value * 2
end
p result == {}
