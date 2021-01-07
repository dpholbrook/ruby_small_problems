=begin
  description:
    - in current code, we check to see if each pair of elements is sorted
      - if it is, we do nothing
      - if it is not, we swap them
    - we iterate through the array until no elements are swapped
    - then we exit the loop, knowing that the array is sorted

    - now we want to defer implimentation of the condiion of whether the two items are sorted to the block
  input: array
  output: array sorted base on criteria of block

  rules:
    - method takes an optional block
    - block determines how array is sorted

  algorithm:
    - if block given yield
    - else execute the original code
=end

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      first = array[index - 1]
      second = array[index]
      sorted = block_given? ? (yield(first, second)) : (first <= second)

      next if sorted
      array[index - 1], array[index] = second, first
      swapped = true
    end

    break unless swapped
  end
  nil
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [5, 3, 7]
bubble_sort!(array) { |first, second| first >= second }
p array == [7, 5, 3]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = [6, 12, 27, 22, 14]
bubble_sort!(array) { |first, second| (first % 7) <= (second % 7) }
p array == [14, 22, 12, 6, 27]

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array)
p array == %w(Kim Pete Tyler alice bonnie rachel sue)

array = %w(sue Pete alice Tyler rachel Kim bonnie)
bubble_sort!(array) { |first, second| first.downcase <= second.downcase }
p array == %w(alice bonnie Kim Pete rachel sue Tyler)
