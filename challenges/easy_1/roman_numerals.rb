=begin
  input: integer
  output: roman numeral

  rules:
    I = 1
    V = 5
    X = 10
    L = 50
    C = 100
    D = 500
    M = 1000

    MMVIII = 2008
    MXMXLIX =

    1: I C X M
    2: 1 * 2
    3: 1 * 3
    4: 1 + V, 1 + L, 1 + D
    5: V L D
    6: V + 1, L + 1, D + 1
    7: V + 2, L + 2, D + 2
    8: V + 2, L + 2, D + 2
    9: 1 + X, 1 + C, 1 + M

  algorithm:
    - init place var to 1
    - until place var > num.to_s.size
    - chop number
      - if place == 1 then look in ONES
      - if 2 then look in tens
      - if 3 then look in hundreds
      - if 4 then look in thousands

    - prepend numeral at index chopped number to Roman numeral
    - incriment place var
=end

ONES = %w(0 I II III IV V VI VII VIII IX)
TENS = %w(0 X XX XXX XL L LX LXX LXXX XC)
HUNDREDS = %w(0 C CC CCC CD D DC DCC DCCC CM)
THOUSANDS = %w(0 M MM MMM)

class Integer
  def to_roman
    roman_numeral = ''
    place = 1
    num = self

    until place > self.to_s.size do
      num, digit = num.divmod(10)
      roman_numeral.prepend(lookup(place)[digit]) unless digit == 0
        place += 1
    end

    roman_numeral
  end

  def lookup(place)
    case
    when place == 1 then ONES
    when place == 2 then TENS
    when place == 3 then HUNDREDS
    when place == 4 then THOUSANDS
    end
  end
end

=begin
  - generate hash of all individual roman numeral possibilities from big to small
  - iterate through hash
    - use divmod to determine number of times current value goes into input
    - multiply symbol by frequency and add to string
    - set input to remainder and continue with next value in the hash
=end

# class Integer
#   def to_roman
#     input_num = self
#     roman_hash = populate_roman_hash
#     roman_numeral = ''
#
#     roman_hash.each do |symbol, number|
#       frequency, input_num = input_num.divmod(number)
#       roman_numeral += symbol * frequency
#     end
#
#     roman_numeral
#   end
#
#   def populate_roman_hash
#     symbols = %w(I IV V IX X XL L XC C CD D CM M).reverse
#     numbers = [1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000].reverse
#
#     Hash[symbols.zip(numbers)]
#   end
# end
