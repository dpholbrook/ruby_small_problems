=begin

input1: rational number
output1: array of denominators of egyptian fraction for that number

input2: array of numbers that are the denominators of an egyptian fraction
output2: the rational number associated with that egyption fraction

rules:
  - rational number
    - can be represented by division of integers (fraction)
    - 4/5, 2,1
  - unit fraction
    - numerator is 1
    - 1/2, 1/8, etc
  - egyptian fraction
    - sum of distinct unit fractions (no two are same)
    - 1/2 + 1/3 + 1/13 + 1/15
  - positive rational number can be written as egyptian fraction
    - 2 = 1/1 + 1/2 + 1/3 + 1/6

  - Problem 1: given a rational number return an array of the denominators of the unit
       fractions that make up the egypian fraction that represents that
       rational number

algorithm1:
  - given rational number
    - unit_fraction_sum = 0
    - start count
    - does the rational number 1/count go into the input minus the unit fraction sum?
        - if so, push to array and add to unit fraction sum
        - if not, go to next count
    - do this until unit fraction sum == input

    Problem 2: given an array of numbers that represent the denominators of unit
       fractions making up an egyptian fraction, return the rational number
       represented

algorithm2:
  - given an array of numbers
    - transform each number into a unit fraction using the rational number class
    - sum those numbers


=end

def egyptian(rational_num)
  result = []
  unit_fraction_sum = 0

  count = 1

  until unit_fraction_sum == rational_num
    current_unit_fraction = Rational(1, count)
    if current_unit_fraction <= (rational_num - unit_fraction_sum)
      result << count
      unit_fraction_sum += current_unit_fraction
    end
    count += 1
  end
  result
end

p egyptian(Rational(2, 1)) == [1, 2, 3, 6]
p egyptian(Rational(137, 60)) == [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]


def unegyptian(array)
  array.map { |number| Rational(1, number) }.sum
end


p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
