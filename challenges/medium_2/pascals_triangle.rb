=begin
  compute pascals triangle up to given number of rows

  rules:
    - In Pascal's Triangle each number is computed by adding the numbers to the
      right and left of the current position in the previous row.
    - Triangle class
    - argument passed to new triangle object is number of rows
    - row number is number of elements in that row
    - rows instance method returns array of arrays
      - each row is an array
    - first row is [1]
    - second row is [1, 1]
    - every array after is 1 1 on either end with sum of each consecutive from previous array in between
    - last (instance method?) returns the last item of the rows array


[1],
[1, 1],
[1, 2, 1],
[1, 3, 3, 1],
[1, 4, 6, 4, 1],
[1, 5, 10, 10, 5, 1]



- generate
Algorithm:
  - generate size number of arrays
  - push each row array to rows array
  - if count is 1 then row is [1]
  - if count is 2 then row is [1, 1]
  - otherwise middle is each consecutive sum from row before with 1 on either side
    -



=end

class Triangle
  def initialize(rows)
    @rows = rows
  end

  def rows
    triangle = []
    row = []
    (1..@rows).each do |count|
      if count == 1
        row = [1]
      elsif count == 2
        row = [1, 1]
      else
        middle = []
        row.each_cons(2) do |pair|
          middle << pair.sum
        end
        row = [1] + middle + [1]
      end

      triangle << row
    end

    triangle
  end

end

p Triangle.new(20).rows.last
