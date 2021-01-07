=begin
  input: integer or string
  output: array of strings

  rules:
    - SecreteHandshake class takes integer or string argument
    - commands instance method
      - outputs commands associated with input integer
      - starts with smallest divisor and works up
      - returns empty array with invalid string

    algorithm:
      - SecretHandshake class takes string or integer argument
        - initialize instance variable to number or string
        - convert input to binary
        - if input is invalid, then @number = 0
        - commands instance method
          - if number is string, convert string to integer
          - if number is integer, convert integer to binary integer
          - convert binary integer to commands
          - return array of commands



          - convert input integer to binary
            - binary number is going to be an array that gets reversed
                  18 = [0, 1, 0, 0, 1].reverse.join.to_s = '10010'

            - turn biggest 2**index divisor of num to 1
              - count up through each index of the array starting thier value at 0
              - until 2 to index does not go into number
              - if 2 to current index goes into number assign index to 0
              - assign last valid divisor index a value of 1
              - repeat the same process with (number - 2**last_divisor)
              - do this until num == 0 (there is nothing left over)

            - convert binary number to command
              - initialize commands array to []

            1 - wink
            10 - double blink
            100 - close your eyes
            1000 - jump

            10000 - reverse order of operations in secret handshake

            111 would be wink, double wink, close your eyes
              - use divmod

            pass number to number to binary
              - output is binary number
              - if binary % 10 == 1 then wink
              - if binary % 100 >= 10 then double blink
              - if binary % 100 >= 100 then close your eyes
              - if binary % 1000 >= 1000 then jump
              - if binary % 10000 >= then reverse order

              validate input
                - if input to s to i == input or input to i to s == input then valid




=end

# class SecretHandshake
#   def initialize(input)
#     @input = input
#   end
#
#   def commands
#     input_to_binary
#     commands = []
#
#     commands << 'wink' if @binary % 10 == 1
#     commands << 'double blink' if @binary % 100 >= 10
#     commands << 'close your eyes' if @binary % 1000 >= 100
#     commands << 'jump' if @binary % 10000 >= 1000
#     commands.reverse! if @binary % 100000 >= 10000
#
#     commands
#   end
#
#   private
#
#   def valid_input?
#     @input.to_i.to_s == @input || @input.to_s.to_i == @input
#   end
#
#   def input_to_binary
#     @input = 0 unless valid_input?
#
#     if @input.class == String
#       @binary = @input.to_i
#     else
#       integer_to_binary
#     end
#   end
#
#   def integer_to_binary
#     array = []
#     remainder = @input
#
#     until remainder == 0
#       index = 0
#       while remainder/(2**index) > 0
#         array[index] = 0
#         index += 1
#       end
#       array[index - 1] = 1
#
#       remainder = remainder - (2**(index - 1))
#     end
#     @binary = array.reverse.join.to_i
#   end
# end
#
# p SecretHandshake.new(31).commands

=begin
  input: integer or string binary
  output: secret event of handshake (array of strings)

  rules:
    1 = wink
    10 = double blink
    100 = close your eyes
    1000 = jump
    10000 = Reverse the order of the operations in the secret handshake.

    '11001' => ['jump', 'wink']

    The program should consider strings specifying an invalid binary as the value 0.

    algorithm:
      - Secrethandshake class

      - EVENTS is array of events

      - initialize
        - input
        - binary

      - commands instance method
        - reverse string and convert to array of chars
        - iterate on 0..3
          - if current char is '1' then select EVENTS[index]
        - if last char in reversed string is 1 then reverse the commands

      - to binary instance method
        - if integer, convert to binary string
        - if string, return string

=end

class SecretHandshake
  EVENTS = ['wink', 'double blink', 'close your eyes', 'jump']
  def initialize(input)
    @input = input
    @binary = binary
    @events = []
  end

  def commands
    (0..3).each do |idx|
      @events << EVENTS[idx] if @binary.reverse[idx] == '1'
    end

    @events.reverse! if @binary[4] == '1'
    @events
  end

  private
  
  def binary
    @binary = @input.is_a?(String) ? @input : @input.to_s(2)
  end
end

p SecretHandshake.new(3).commands
