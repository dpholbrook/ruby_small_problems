=begin
  input: number
  output: sum of multiples

  rules:
    - to is a class method and an instance method
    - if an object is instantiated, number arguments are passed in and to is called on the object
    - if an object is not instantiated the class method to is called on the class


    algorithm:
      - create SumOfMuiltiples class
        - takes indefinate arguments
        - initialize arguments to array
        - to method
          - takes an argument
          - init multiples array
          - 1.upto(argument -1 )
          - iterate on arguments array
            - if count is divisible by argument push count to multiples array
            - remove duplicates from array
            - return sum
=end

# class SumOfMultiples
#
#   def initialize(*nums)
#     @numbers = nums
#   end
#
#   def self.to(limit, numbers = [3, 5])
#     (1..limit - 1).select do |count|
#       numbers.any? { |number| count % number == 0 }
#     end.sum
#   end
#
#   def to(limit)
#     self.class.to(limit, @numbers)
#   end
#
# end
#
# p SumOfMultiples.to(10)

=begin
  input: optional divisors and upper limit of range
  output: sum of all multiples of divisors up to but not including limit

  rules:
    - to class method uses default divsors to 3 and 5
    - sum_of_multiples object can take multiple arguments upon initialization
    - to instance method takes range limit argument

  algorithm:
    - to class method
      - divisors are 3 and 5
      - lower divisor up to limit argument
        - select numbers that are divisible by 3 or 5
        - sum selection and return

    - to instance method
      - same implimentation with multiple divisors
=end

class SumOfMultiples
  def self.to(limit, numbers = [3, 5])
    1.upto(limit - 1).select do |cantidate|
      numbers.any? { |num| cantidate % num == 0 }
    end.sum
  end

  def initialize(*divisors)
    @divisors = divisors
  end

  # def to(limit)
  #   1.upto(limit - 1).select do |cantidate|
  #     @divisors.any? { |divisor| cantidate % divisor == 0 }
  #   end.sum
  # end

  def to(limit)
    self.class.to(limit, @divisors)
  end
end

p SumOfMultiples.to(10)
p SumOfMultiples.new(4, 6).to(15)
