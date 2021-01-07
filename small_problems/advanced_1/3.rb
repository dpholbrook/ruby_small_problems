=begin

input: nested array
output: nested array

rules:
  - transpose the input array so that the rows become the columns and the
    columns become the rows
  - input rows are sub_arrays at matrix[idx]
  - input columns are numbers at sub_array[idx])

algorithm:
  - transform matrix array with map
    - transform each sub array with map
      - first array:
        - the first element becomes the first element in the first input array
        - the second element becomes the first element of the second input array
        - third element becomes the first element in the third input array
      - second array:
        - first element becomes second element of first input array
        - second element becomes second element of second input array
        - third element becomes second element of third input array
      - etc

    - reference the input sub array with the index of the current element
      and the input element with the index of the current sub array

=end



def transpose(matrix)
  matrix.map.with_index do |sub_arr, sub_arr_idx|
    sub_arr.map.with_index do |num, num_idx|
      matrix[num_idx][sub_arr_idx]
    end
  end
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [
  [1, 4, 3],
  [5, 7, 9],
  [8, 2, 6]
]

p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
