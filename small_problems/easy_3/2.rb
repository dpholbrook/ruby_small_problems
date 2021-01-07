# input: two positive integers
# output: a bunch of strings
#
# rules:
#   - output
#     - addition
#     - subtraction
#     - product
#     - quotient
#     - the remainder
#     - the power
#
# example:
# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
#
# algorithm

puts "Please enter a number."
num1 = gets.chomp.to_i

puts "One more."
num2 = gets.chomp.to_i

puts num1 + num2
puts num1 - num2
puts num1 * num2
puts num1 / num2
puts num1 % num2
puts num1 ** num2


# def prompt(message)
#   puts "==> #{message}"
# end
#
# def nonzero?(number)
#   number != 0
# end
#
# num_1 = nil
# loop do
#   prompt("Enter the first number.")
#   num_1 = gets.chomp.to_f
#   break if nonzero?(num_1)
#   prompt("Please enter a nonzero number.")
# end
#
# num_2 = nil
# loop do
#   prompt("Enter the second number.")
#   num_2 = gets.chomp.to_f
#   break if nonzero?(num_2)
#   prompt("Please enter a nonzero number.")
# end
#
# sum = num_1 + num_2
# subtract = num_1 - num_2
# product = num_1 * num_2
# divided = num_1 / num_2
# remainder = num_1 % num_2
# power = num_1 ** num_2
#
# prompt("#{num_1} + #{num_2} = #{sum}")
# prompt("#{num_1} - #{num_2} = #{subtract}")
# prompt("#{num_1} * #{num_2} = #{product}")
# prompt("#{num_1} / #{num_2} = #{divided}")
# prompt("#{num_1} % #{num_2} = #{remainder}")
# prompt("#{num_1} ** #{num_2} = #{power}")



# get numbers one and two
# perform the operations on them
# print the results
#
# Input
# - two integers
#
# Output
# - two numbers
#   +
#   -
#   *
#   /
#   %
#   **
#
#   ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
