require 'pry'

=begin
  - given a range
  - find all combinatinos of numbers in that range (factors)
  - for each pair of factors
    - if their product is a palindrome
    - store palindrome as largest if its value is bigger than max value
    - store as smallest if value is less than min value
    - if value == smallest or largest, add factors to that palindromes factors array
=end

class Palindromes
  attr_reader :largest, :smallest

  def initialize(max_factor: 1, min_factor: 1)
    @max = max_factor
    @min = min_factor
    @largest = nil
    @smallest = nil
  end

  def generate
    factors.each do |factors|
      product = factors[0] * factors[1]
      next unless palindrome?(product)
      @largest = Palindrome.new(product, factors) if @largest.nil?
      @smallest = Palindrome.new(product, factors) if @smallest.nil?

      case
      when product > @largest.value then @largest = Palindrome.new(product, factors)
      when product < @smallest.value then @smallest = Palindrome.new(product, factors)
      when product == @smallest.value && factors != @smallest.factors.first then @smallest.factors << factors
      when product == @largest.value then @largest.factors << factors
      end
    end
  end

  def factors
    factors = []
    (@min..@max).each do |first|
      (first..@max).each do |second|
        factors << [first, second]
      end
    end

    factors
  end

  def palindrome?(product)
    product.to_s == product.to_s.reverse
  end
end

class Palindrome
  attr_accessor :factors
  attr_reader :value

  def initialize(value, factors)
    @value = value
    @factors = [factors]
  end
end

p Palindromes.new(max_factor: 9).generate

=begin
  overview: detect palindromic products given a range of factors

  rules:
    - new class method
      - takes min factor and max factor
      - defualt min_factor is 1

    - generate
      - called on palidnromes object and generates array of palindrome objects
      - a palindrome can be a single digit integer
      - each palindrome object has a state that includes
        - its value
        - its factors
          - this is ALL? of the factors including duplicate factors

    - largest
      - returns the largest palindrome from array of palindrome objects
      - this is a palindrome object not a palindromes object

    - smallest
      - returns smallest palindrome object

    - value
      - is a getter method of a palindrome object that returns its value

    - factors
      - is an istance (getter) method of palindrome not palindromes
      - returns a nested array of all of the factors of a palindrom object

  algorithm:
    - Palindromes class

      - define new method for palindromes class to take max_factor and min_factor
        with a default value of 1

      - generate class method
        - returns array of palindrome objects
        - multiply all factors
        - if product is palindrome
        - create new palindrome object
          - construct with value and factors

        - largest
          - return largest

        -
        - if it is a palindrome, then create palindrome object and save factors
          to factors instance variable
      - repeat until max = 0
      - do that

      palindrome class
        - @value integer
        - @factors nested array

        -

    - palindrome?
      - is product equal to product string reveresed to i?


    -
=end

# class Palindromes
#   def initialize(max_factor: 1, min_factor: 1)
#     @max = max_factor
#     @min = min_factor
#     @palindromes = []
#   end
#
#   def generate
#     products = Hash.new(0)
#
#     (@min..@max).each do |first|
#       second = @max
#       until second == @min
#         product = first * second
#         if palindrome?(product)
#           if products.has_key?(product)
#             products[product] << [first, second]
#           else
#             products[product] = [[first, second]]
#           end
#         end
#         second -= 1
#       end
#     end
#
#     products.each do |k, v|
#       products[k] = v.map { |sub_arr| sub_arr.sort }.uniq
#     end
#
#     products = products.sort_by { |k, v| k }.to_h
#
#     products.each do |k, v|
#       @palindromes << Palindrome.new(k, v)
#     end
#
#   end
#
#   def palindrome?(product)
#     product == product.to_s.reverse.to_i
#   end
#
#   def largest
#     @palindromes.last
#   end
#
#   def smallest
#     @palindromes.first
#   end
# end
#
# class Palindrome
#   attr_reader :value, :factors
#
#   def initialize(value, factors)
#     @value = value
#     @factors = factors
#   end
# end
