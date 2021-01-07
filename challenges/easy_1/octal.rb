=begin
  input: octal string
  output: integer or 0

  rules:
    - octal number is base 8
    - no digit in octal number can be greater than 8

  algorithm:
    - octal class
        - convert string to reversed array of digits

      - to_decimal instance method
        - convert digit to decimal
          - each digit is digit * 8**idx

      - invalid octal
        - string includes a-z89



=end

class Octal
  BASE = 8

  def initialize(string)
    @string = string
    @reversed_digits = string.to_i.digits
  end

  def to_decimal
    return 0 if invalid_octal?
    @reversed_digits.map.with_index { |num, idx| num * (BASE**idx) }.sum
  end

  def invalid_octal?
    @string.match(/[\D89]/)
  end
end

# class Octal
#
#   def initialize(octal)
#     @octal = octal.match?(/[89]/) ? '0' : octal.to_i.to_s
#   end
#
#   def to_decimal
#     @octal
#       .to_i
#       .digits
#       .map
#       .with_index { |digit, idx| digit * (8**idx) }
#       .inject(&:+)
#   end
# end
