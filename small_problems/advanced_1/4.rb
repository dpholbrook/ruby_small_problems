=begin

input: nested array
output: nested array

rules:
  - each element in the sub arr is a column
  - each sub arr is a row
  - transpose matrix of any size with at least 1 row and 1 column
  - the size of the sub arrs (number of columns) is the number of sub arrs (rows) in the output
  - the number of sub arrs (number of rows) is the number of elements in each sub arr (columns) in the output

algorithm:
  - create a result array with sub arr size sub arrays
  - iterate on each sub arr
    - iterate on each element with index
      - push each element from input sub arr to result[index] array



=end

def transpose(matrix)
  result = []
  matrix[0].size.times { |_| result << []}

  matrix.each do |sub_arr|
    sub_arr.each_with_index do |num, idx|
      result[idx] << num
    end
  end
  result
end


p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
