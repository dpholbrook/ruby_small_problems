=begin
input: sorted array of integers
output: sorted array of missing integers

rules:
  - input array has missing integers
  - return an array of those missing integers
  - if there are none missing, return an empty array

algorithm:
  - create an array with range of input first element to last element
  - subtract that array from the input array
  - return the array result

=end

def missing(arr)
  complete_arr = (arr.first..arr.last).to_a
  complete_arr - arr
end

missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
missing([1, 2, 3, 4]) == []
missing([1, 5]) == [2, 3, 4]
missing([6]) == []
