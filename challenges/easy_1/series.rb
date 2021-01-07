=begin
input: string of digits
output: all possible consecutive number series of length n in the string

rules:
  - method takes an argument n that is the length of the series
  - output every series of that length that exists in the string
  - there is a Series class
    - takes string of digits argument
    - Series#slices instance method takes every possible series slice of argument n
      length and returns an array of sub arrays
      - if argument is larger than series object array size, then raise argument error

algorithm:
  - define Series class
    - initialize array of digits instance variable
    - define slices method
      - counter = 0
      - slices = []
      - while counter + argument <= array size
        - take a slice of array from counter to counter + argument
        - push slice to slices
        - increment counter
      - end loop
=end

class Series
  attr_accessor :num_arr

  def initialize(string)
    @num_arr = string.chars.map(&:to_i)
  end

  def slices(num)
    raise(ArgumentError, 'Slice is too big.') if num > @num_arr.size

    counter = 0
    slices = []
    while (counter + num) <= @num_arr.size
      slices << @num_arr[counter, num]
      counter += 1
    end

    # @num_arr.each_cons(num) { |slice| slices << slice } # this also works

    slices


  end
end

series = Series.new('01234')
p series.slices(7)
