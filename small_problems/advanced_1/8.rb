=begin

input: array
output: array (merge sorted)

rules:
  - array has one data type
  - either all numbers or all strings

  - merge sort
    - recursive
    - turn elements into nested sub arrays
    - merge each pair of nested sub arrays (and somehow magically sort them)

algorithm:
  - split array into nested arrays of one element arrays
  - recursively turn all elements into nested one element arrays
    left = arr.size/ 2 ceil
    right = arr.size - left
      - slice arr accordingly
      - merge_sort each sub array until input arr size = 1


      could only get this far:
      def sort(arr)
        return arr if arr.size == 1
        left = (arr.size / 2.0).ceil
        right = arr.size - left
        left_side = arr[0, left]
        right_side = arr[left, right]
        [sort(left_side), sort(right_side)]
      end

    I was able to break the arrays down but was not able to wrap my head around
    how to use recursion to then build them back up in a sorted manner.


Upon looking at the solution and studying it for hours, I came up with this explanation:

p merge_sort([6, 2, 7, 1, 4])

`[6,2]` is assigned to `sub_array_1`
`[7, 1 4]` is assigned to `sub_array_2`

`sub_array_1` is reassigned to the return value of calling `merge_sort` on `[6, 2]`
  Within this method call
	`sub_array_1` is assigned to [6]
	`sub_array_2` is assigned to [2]
  These arrays are passed again to the `merge_sort` method but they are returned    because they meet the condition of being one element arrays.
  The two one element arrays are passed to the `merge` method which returns a merged array `[2, 6]`
  So, way back to that when `sub_array_1` was reassigned, after some recursion, the return value that it is assigned to is `[2, 6]`

  Now, `sub_array_2` is reassigned to the return value of calling `merge_sort` on `[7, 1, 4]` which will do the same thing, recursively break the
  array down into one element arrays and merge them into an array `[1, 4, 7]`. `sub_array_1` and `sub_array_2` are then merged.  Wow!


I was then able to write my own pseudo code:

- recursively break input array in half until input array has only one element
  - return input array if input array only has one element
  - break input array into two sub arrays
  - assign each sub array to sub_array_1 and sub_array_2 variables
  - reassign sub_array_1 to the return value of calling merge_sort on sub_array_1
  - do the same to sub_array_2
    - this will recursively break each sub array into a one element array
  - pass sub arrays to the merge method
  - sub_arrays will be merged into sorted, arrays until one sorted array is returned

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

def merge_sort(arr)
  half = arr.size / 2

  return arr if arr.size == 1
  sub_arr_1 = arr[0...half]
  sub_arr_2 = arr[half..-1]

  sub_arr_1 = merge_sort(sub_arr_1)
  sub_arr_2 = merge_sort(sub_arr_2)

  merge(sub_arr_1, sub_arr_2)
end



p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) ==
             %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) ==
             [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
