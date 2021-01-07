=begin
- input: trinary number string
- output: decimal number

rules:
  - return 0 if trinary number is invalid
  - trinary number
    - 0, 1, or 2
    - last is how many ones, then threes, then nines, then 27s, etc
    - last is how many threes to the zero power, then squared, then cubed, etc

  implicit
    - create trinary class
    - to_decimal method

algorithm:
  - create Trinary class
    - takes a string argument
    - split string into array of chars and convert to numbers
    - create new array
    - iterate on array in reverse
    - init countdown to 0
    - while -countdown < arr.size
      - trinary to number
        - trinary_num_arr[countdown - 1] * 3**countdown
      - unshift to new_arr
      - decriment countdown
    - sum array

    - make sure that string only includes 1, 2, or 3

=end

# class Trinary
#   def initialize(string)
#     @string = string
#   end
#
#   def to_decimal
#     return 0 unless valid_string?
#
#     trinary_num_arr = convert_to_trinary_num_arr
#     new_arr = []
#
#     reverse_index = -1
#     while -reverse_index <= trinary_num_arr.size
#       converted = trinary_conversion(trinary_num_arr, reverse_index)
#       new_arr.unshift(converted)
#       reverse_index -= 1
#     end
#
#     new_arr.sum
#   end
#
#   private
#
#   def convert_to_trinary_num_arr
#     @string.chars.map(&:to_i)
#   end
#
#   def valid_string?
#     @string.delete('012').empty?
#   end
#
#   def trinary_conversion(trinary_num_arr, reverse_index)
#     trinary_num_arr[reverse_index] * (3 ** -(reverse_index + 1))
#   end
# end

class Trinary
  def initialize(str)
    @trinary = str.to_i
  end

  def to_decimal
    @trinary.digits.map.with_index { |num, idx| num * (3 ** idx) }.sum
  end
end

test = Trinary.new('1122000120')

p test.to_decimal
