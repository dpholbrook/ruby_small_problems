=begin
  Overview:
    - Take a phone number and return a cleaned up version (only digits with
      no whitespaces or any other chars).

  Input: string
  Output: cleaned up string

  Rules:
    - (once the string has been cleaned up)
    - < 10 digit is bad number
    - 10 digits is good number
    - 11 digits,
      - starting with one, is good
        - trim the 1 off and return the number
      - else it is bad
    - > 11 digits is bad

    - clean dashes dots and spaces and paren
      - scan for all word chars

    - number
      - if number is invalid, return a string of 10 0s
      - if it is valid, return the number

    - area code
      - returns the first three digits of the number

    - to s
      - returns number in '(123) 456-7890' format

    - invalid if:
      - if a number has 10 digits but also has letter chars
      - if a number has 10 chars and some of those are letter chars

      if it has 10 digits and no chars after cleanup

  Algorithm:
    - phone number is cleaned up string

    - calibrate number
      - < 10 digit is bad number
      - 10 digits is good number
      - 11 digits,
        - starting with one, is good
          - trim the 1 off and return the number
        - else it is bad
      - > 11 digits is bad

    - if valid then return phone number
    - else return 10 0s

    - area code
      - returns the first three digits of the number

    - to s
      - returns number in '(123) 456-7890' format
=end

class PhoneNumber
  def initialize(string)
    @phone_number = format_phone_number(string)
  end

  def number
    @phone_number
  end

  def format_phone_number(string)
    phone_number = string.scan(/\w/).join

    if phone_number.size == 10 && phone_number.scan(/\d/).size == 10
      phone_number
    elsif phone_number.size == 11 && phone_number[0] == '1'
      phone_number[1..-1]
    else
      '0000000000'
    end
  end

  def area_code
    @phone_number[0..2]
  end

  def to_s
    exchange = @phone_number[3..5]
    sln = @phone_number[6..9]

    "(#{area_code}) #{exchange}-#{sln}"
  end
end
