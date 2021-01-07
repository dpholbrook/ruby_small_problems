=begin

  input: the nth prime
  output: the nth prime number

  rules:
    - input must be 1 or more or raise an argument error
    - to find nth prime we check to see if any numbers less than the square root
    of the cantidate go into the cantidate evenly
    - nth is a class method

  algorithm:
    - if input is less than 1, raise argument error

    - nt
      - takes a number argument
      - nth_prime = 0
      - count up starting at two
      - check to see if count is prime
        - if it is, incriment nth_prime by 1
        - prime = count
        - do this until nth_prime == input
        - return prime

      prime?
        - 2 upto the square root of the input number
        - check to see if count goes into input number
        - if it does, then prime
        - if none do, then false
=end

# class Prime
#   def self.nth(input)
#     raise ArgumentError if input < 1
#     nth_prime = 0
#     cantidate = 1
#
#     while nth_prime < input do
#       nth_prime += 1 if prime?(cantidate += 1)
#     end
#
#     cantidate
#   end
#
#   def self.prime?(cantidate)
#     (2..(Math.sqrt(cantidate))).none? { |divisor| cantidate % divisor == 0 }
#   end
# end

class Prime
  def self.nth(input)
    raise ArgumentError if input < 1
    primes = [2]
    cantidate = 3

    while primes.size < input do
      primes << cantidate if prime?(cantidate)
      cantidate += 2
    end

    primes.last
  end

  def self.prime?(cantidate)
    (2..(Math.sqrt(cantidate))).none? { |divisor| cantidate % divisor == 0 }
  end
end
