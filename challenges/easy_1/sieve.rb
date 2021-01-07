=begin
input: number
output: array of primes from 2 up to that number

rules:
  - the multiples of a prime number are not prime
  - mark all of these as not prime
  - create range starting at two upto input

algorithm:
  - create Number class
    - number instance variable
    - prime instance variable
    - mark as not prime method

  - create Sieve class
    - create instance variable that is range of number objects from 2 upto input number
    - prime instance method
      - iterate on range
        - if current number is marked as not prime, go to next number
        - if current number is marked as prime then:
          - iterate on the range and mark every number object whos value is
          divisible by current number as not prime


algorithm 2:
  - create range from 2 upto input
  - prime is deleted first number from range
  - push prime to primes
  - select all numbers from range that are not divisible by first number
  - repeat


- take next available unmarked number from list (prime)
- mark all of its multiples (not prime)
- repeat until all numbers are processed

=end

class Sieve
  attr_accessor :range

  def initialize(num)
    @range = (2..num).to_a
  end

  def primes
    primes = []

    while(prime = range.shift)
      primes << prime
      range.reject! { |num| num % prime == 0 }
    end

    primes
  end

end

# class Number
#   attr_reader :value
#
#   def initialize(number)
#     @value = number
#     @prime = true
#   end
#
#   def prime?
#     @prime == true
#   end
#
#   def mark_not_prime
#     @prime = false
#   end
# end
#
# class Sieve
#   attr_accessor :range
#   attr_reader :upper
#
#   def initialize(num)
#     arr = []
#     2.upto(num) do |count|
#       arr << Number.new(count)
#     end
#     @range = arr
#     @upper = num
#   end
#
#   def primes
#     @range.each do |number|
#       if number.prime?
#         @range.each do |following|
#           next if following.value == number.value
#           following.mark_not_prime if following.value % number.value == 0
#         end
#       end
#     end
#     @range.select { |num| num.prime? }.map { |num| num.value }
#   end
# end

sieve = Sieve.new(10)
p sieve.primes
