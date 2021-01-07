=begin
  - input: integer
  - output: deficient, perfect, or abundant

  - rules:
    - perfect: number whos divisors sum to number (not including number)
      - 6 (1 + 2 + 3)
    - deficient: sum of divisors < number
      - 7 (1)
    - abundant: sum of divisors > number

    - PerfectNumber class
    - classify CLASS METHOD
    - if input is negative, raise RuntimeError

  - algorithm:
    - PerfectNumber class
    - classify class method
      - takes integer input
      - if valid input?
        - find divisors up to number (not including)
        - sum them

      - perfect number
        - if sum == then perfect
        - if sum < then deficient
        - if sum > then abundant

      - valid input
        - raise RuntimeError if input is not positive integer

      - find divisors
        - 1 upto number select all numbers where input % num == 0

=end

# class PerfectNumber
#   def self.classify(num)
#     validate_input(num)
#     sum = sum_divisors(num)
#     case
#     when sum == num then "perfect"
#     when sum > num  then "abundant"
#     when sum < num  then "deficient"
#     end
#   end
#
#   private
#
#   def self.sum_divisors(num)
#     (1..num / 2).select { |divisor| num % divisor == 0 }.sum
#   end
#
#   def self.validate_input(num)
#     raise RuntimeError, "Invalid Number" unless num.to_s.to_i > 0
#   end
# end

class PerfectNumber
  def self.classify(num)
    raise RuntimeError, "Invalid Number" unless num.to_s.to_i > 0

    sum = (1..num / 2).map { |divisor| num % divisor == 0 }.sum

    case
    when sum == num then "perfect"
    when sum > num  then "abundant"
    when sum < num  then "deficient"
    end
  end
end

p PerfectNumber.classify(7)
p PerfectNumber.classify(6)
p PerfectNumber.classify(12)
