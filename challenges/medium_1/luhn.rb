require 'pry'

=begin
  input: number to verify
  output: adends, checksum, or new number

  rules:
    - instance methods:
    - adends
      - count from rightmost digit (check digit)
      - double the value of every second digit

    - checksum
      - sum addends

    - valid
      - if checksum%10 is 0 then it is valid

    - class method
      - create
        - adds a number to the end if the number is not valid
        - what if create is called on a valid number
          - shouldn't add number

  algorithm:
    - Luhn class
      - initialize
        - @number instance variable

      - addends
        - initialize @addends instance variable
        - split number into array of digits and reverse it
        - iterate on digits
          - if index is even, push digit to addends
          - if index is odd
            - if digit * 2 > 10 then subtract 9 and push to @addends
            - else push digit *2
        - double every second number
        - reverse again
        - return @addends transformed array

      - checksum
        - split @addends into array of numbers and sum it
        - return @checksum

      - valid?
        - is @checksum % 10 == 0

      - create class method
        - problem: invalid numbers need a number added to the end that creates a valid number
          - add a zero to end (multiply by 10)
          - get addends
        - takes invalid number argument
        - add a zero to the end and see what the checksum is
        - append 10 minus that to array
          - reverse number and split into array
          - double every other digit
          - sum digits
          - if sum % 10 is 0
            - to add is 0
          - else
            - check_digit is 10 - (sum%10)
          - reverse array
          - append to_add to array
          - join array into number and return number

=end

class Luhn
  attr_accessor :number

  def self.create(num)
    luhn = new(num)
    luhn.number *= 10
    last_digit = luhn.valid? ? 0 : (10 - (luhn.checksum % 10))
    (num.digits.reverse << last_digit).join.to_i
  end

  def initialize(number)
    @number = number
  end

  def addends
    @number.digits.map.with_index do |digit, idx|
      idx.odd? ? calibrate(digit) : digit
    end.reverse
  end

  def calibrate(num)
    ((num * 2) > 10) ? ((num * 2) - 9) : (num * 2)
  end

  def checksum
    @checksum = addends.sum
  end

  def valid?
    checksum % 10 == 0
  end
end
