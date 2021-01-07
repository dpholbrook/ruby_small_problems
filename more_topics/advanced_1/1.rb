factorial = Enumerator.new do |yielder|
  accumulator = 1
  number = 0
  loop do
    accumulator = number.zero? ? 1 : accumulator * number
    yielder << accumulator
    number += 1
  end
end

# yielder is s yielder object
# the factorial is for each number is calculated
# we then yield the factorial with the Enumerator#<< method

7.times { puts factorial.next }

# Enumerator#next returns the next (yielded?)object in the enumerator object
# It is basically yielding the yielder object to the next method call (I think)

factorial.rewind

factorial.each_with_index do |number, index|
  puts number
  break if index == 6
end

# we are iterating on the enumberable outputting the number (that is yielded) with each iteration
# we have to break otherwise it will go on forever


=begin
  description: given a number, return an array that lists all of the factorials, from 0 up to that number
  input: number
  output: all of the factorials up to that number

  rules:
    - factorial is the product of all the of the numbers less than or equal to number
    - another way to think about it is that factorial of n is factorial of n-1 times n.
    - factorial 0 is 1

  algorithm:
    - count up from zero to input number
      - if count is zero, that factorial is 1
      - otherwise
        - factorial is the product of all numbers from one to count
=end

# def factorial(num)
#   factorials = [1]
#
#   1.upto(num) do |count|
#       arr = []
#       1.upto(count) do |counter|
#         arr << counter
#       end
#
#       factorials << arr.reduce { |product, num| num * product }
#   end
#
#   factorials
# end
#
# p factorial(10)

def factorial(input)
  (0..input).map do |num|
    if num == 0
      1
    else
      (1..num).reduce { |product, number| product * number }
    end
  end
end

p factorial(10)
