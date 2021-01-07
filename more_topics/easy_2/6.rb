=begin
  input: array
  output: return reference to original array

  rules:
    - yield each element and its index to the block

  algorithm:
    - init idx to 0
    - loop through collection until idx == arr.size
      - pass idx and current element to the block
      - incriment idx
    - return arr
=end



def each_with_index(arr)
  idx = 0

  while idx < arr.size
    yield(arr[idx], idx)
    idx += 1
  end

  arr
end

  result = each_with_index([1, 3, 6]) do |value, index|
  puts "#{index} -> #{value**index}"
end

puts result == [1, 3, 6]
