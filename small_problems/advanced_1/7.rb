=begin

input: two sorted arrays
output: one sorted array

rules:
  - merge the two input arrays into one sorted array
  - don't mutate the arrays
  - don't sort output array
  - build output array one element at a time, so that it is sorted

algorithm:

  - if either array is empty, an empty array will be returned
    - so, return the two arrays added together

  - initialize result array

  - initialize index variable to 0

  -iterate through the first array
    - enter a loop
      - while idx is within bounds of second array
        - and arr2[idx] is less than the current value in arr1
          - push arr2[idx] to result array
          - incriment idx
      - end loop
      - push the current value of arr1 to the result array

  - if arr1 has been iterated upon but there are more elements in arr2 that
    are greater than the last element in arr 1, they will be left out
      - so, add the remaining part of arr2 starting at the last index referenced

This problem gave me a lot of trouble and I had to look at the solution to
figure out the logic. After that, I was able to write the pseudo code and solve
the problem.

=end

def merge(arr1, arr2)
  return arr1 + arr2 if arr1.empty? || arr2.empty?

  result = []

  idx = 0
  arr1.each do |arr1_value|
    while idx < arr2.size && arr2[idx] < arr1_value
      result << arr2[idx]
      idx += 1
    end
    result << arr1_value
  end

  result + arr2[idx..-1]
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2, 5, 9, 12]) #== [1, 1, 2, 2, 3, 5, 9, 12]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
