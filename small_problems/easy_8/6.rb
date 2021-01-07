=begin

input: two numbers
output: printed strings

rules:
  - print all numbers
  - Fizz if divisible by 3
  - Buzz if divisible by 5
  - FizzBuzz if divisible by 3 and 5

=end

def fizzbuzz(num1, num2)
  num1.upto(num2) do |num|
    case
    when num % 3 == 0 && num % 5 == 0 then puts "FizzBuzz"
    when num % 3 == 0                 then puts "Fizz"
    when num % 5 == 0                 then puts "Buzz"
    else                                   puts num.to_s
    end
  end
end

# input: two numbers
# output: string of numbers
#
# rules:
#   - all numbers between the two numbers
#   - but, those divisibile by three are "Fizz"
#   - those divisible by 5 are "Buzz"
#   - those that are divisible by 3 and 5 are "FizzBuzz"
#
# questions:
#   - zero
#   - negative numbers
#
# algorithm:
#   - num_1 upto num_2
#   - if count is divisible by three and five
#     - output "FizzBuzz"
#   - if count is divisible by 3
#     - output "Fizz"
#   - if count is divisible by 5
#     - output "Buzz"
#   - else output count

# my solution:
# def fizzbuzz(num_1, num_2)
#   result = []
#   num_1.upto(num_2) do |count|
#     if count % 3 == 0 && count % 5 == 0
#       result << "FizzBuzz"
#     elsif count % 3 == 0
#       result << "Fizz"
#     elsif count % 5 == 0
#       result << "Buzz"
#     else
#       result << "#{count}"
#     end
#   end
#   result.join(', ')
# end

# their solution:
# def fizzbuzz(num_1, num_2)
#   result = []
#   num_1.upto(num_2) do |number|
#     result << value(number)
#   end
#   result.join(', ')
# end
#
# def value(number)
#   case
#   when number % 3 == 0 && number % 5 == 0 then "FizzBuzz"
#   when number % 3 == 0 then "Fizz"
#   when number % 5 == 0 then "Buzz"
#   else
#     number
#   end
# end


# test case:
p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
