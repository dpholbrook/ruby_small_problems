=begin
  input: array of numbers
  output: boolean

  rules:
    - write an any? method
      - returns true if block returns true for an element
        - stop processing elements once the block returns true
      - return false otherwise
      - return false if array is empty

  algorithm:
    - init idx
    - init result to false
    - while idx is less than array size
      - yield to block with arr[idx] as argument
        - if block returns truthy value
          - result is true
          - break
      - incriment idx
    - end loop
    - return result

=end

def any?(arr)
  idx = 0

  while idx < arr.size
    return true if yield(arr[idx])
    idx += 1
  end

  false
end

# def any?(arr)
#   arr.each { |e| return true if yield(e) }
#   false
# end

p any?([1, 3, 5, 6]) { |value| value.even? } == true
p any?([1, 3, 5, 7]) { |value| value.even? } == false
p any?([2, 4, 6, 8]) { |value| value.odd? } == false
p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p any?([1, 3, 5, 7]) { |value| true } == true
p any?([1, 3, 5, 7]) { |value| false } == false
p any?([]) { |value| true } == false
