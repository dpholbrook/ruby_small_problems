=begin
  - input: two arrays
  - output: new zipped array

  - rules:
    - take two arrays
    - combine them into a new array array of two element sub arrays
    - each sub array is arr1 value and arr2 value, in order
    - don't change original arrays
    - assum each array has same number of elements

  - algorithm:
    - init zipped array
    - init idx to 0
    - push two element array of current idx to zipped array
    - return zipped array
=end

def zip(arr1, arr2)
  zipped_arr = []

  idx = 0
  while idx < arr1.size
    zipped_arr << [arr1[idx], arr2[idx]]
    idx += 1
  end

  zipped_arr
end

p zip([1, 2, 3], [4, 5, 6]) #== [[1, 4], [2, 5], [3, 6]]
