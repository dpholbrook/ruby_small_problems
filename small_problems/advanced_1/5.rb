=begin

input: matrix (array of arrays)

output: matrix rotated 90 degrees clockwise

rules:
  - new matrix is rotated 90 degress clockwise
  - new matrix number of rows (sub arrays) == input matrix number of columns (number of elements in each sub array)
  - new matrix number of columns (elements in each sub array) == input matrix number of rows (sub arrays)

  - first row (sub array) becomes the last column (last element in each sub array)
  - right column (last element in each sub array) becomes the bottom row (last sub array)
  - last row (sub array) becomes the left column (first element in each sub array)
  - left column (first element in each sub arr) becomes the first row (sub array)

  - new_matrix1[0][0] = matrix1[1][0]
  - new_matrix1[0][1] = matrix1[1][0]
  - new_matrix1[0][2] = matrix1[0][0]

  - new_matrix2[0][0] = matrix2[1][0]
  - new_matrix2[0][1] = matrix2[0][0]
  - new_matrix2[1][0] = matrix2[1][1]
  - new_matrix2[1][1] = matrix2[0][1]


algorithm:
  - initialize results array

  - new_rows = sub_arr.size
  - new_columns = arr.size

  - push new_rows sub arrays to result to form new row sub arrays

  - build a new row, new_rows number of times
    - in each new row count down from new_columns to 0
      - push the first element from the last sub array to the first new row
      - push the first element form the next to last sub array to the first new row
      - etc

  - return the result array

  After looking at the LS solution, I found it much easier to use my
  transpose method:

  algorithm:
    - transpose method returns an array where the input columns become rows
      and the input rows become columns
    - this is the result we want with rotate90 method but once we have the
      transposed matrix, we want the elements in each sub array to be reversed
    - use the transpose method
      - tranform each sub array from the returned matrix with map
        - reverse the order of the elements in the sub array
        - return the transposed matrix with reversed sub arrays




=end

# my original solution:

def rotate90(matrix)
  result = []

  new_rows = matrix[0].size
  new_columns = matrix.size

  # make new rows
  new_rows.times do |_|
      result << []
  end

  # build each new row, one element at a time
  new_rows.times do |row_index|
    (new_columns - 1).downto(0) do |column_index|
      result[row_index] << matrix[column_index][row_index]
    end
  end

result
end



# building off of the transpose method:
#
# def rotate90(matrix)
#   result = []
#   matrix[0].size.times { |_| result << []}
#
#   matrix.each do |sub_arr|
#     sub_arr.each_with_index do |num, idx|
#       result[idx] << num
#       result
#     end
#   end
#   p result.map(&:reverse)
# end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# [[3, 4, 1],
#  [9, 7, 5],
#  [6, 2, 8]]


matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

# [[5, 3],
#  [1, 7],
#  [0, 4],
#  [8, 2]]

rotate90(matrix1)
rotate90(matrix2)

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2


# # FEX
# - rotations times
#   - rotate matrix and reassign matrix to the rotated version
#   - return matrix


# def rotate(matrix, rotations)
#   rotations.times do |_|
#     matrix = rotate90(matrix)
#   end
#   matrix
# end
#
# p rotate(matrix1, 2)
