# input: integer
# output: string
#
# rules:
#   - input is greater than 0
#   - ask user if they want to return sum (s) or product (p) of all integers between 1 and input
#   - output string with the solution
#
# algorithm:
#   - get integer
#   - create array of 1 to input
#   - get ('s') or ('p')
#   - if 's'
#     - sum values in array
#   - if 'p'
#     - multiply values in array
#   - return string with result

puts "Please enter an integer greater than 0."
num = gets.chomp.to_i
num_arr = (1..num).to_a

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  result = num_arr.inject(:+)
  puts "The sum of the integers between 1 and #{num} is #{result}."
elsif operation == 'p'
  result = num_arr.inject(:*)
  puts "The product of the integers between 1 and #{num} is #{result}."
end

















# def compute_sum(num)
#   total = 0
#   1.upto(num) { |i| total += i }
#   return total
# end
#
# def compute_product(num)
#   total = 1
#   1.upto(num) { |i| total *= i }
#   return total
# end
#
# def valid_integer?(num)
#   num.to_i.to_s == num && num.to_i > 0
# end
#
# num = nil
#
# loop do
#   puts "Please enter an integer greater than 0."
#   num = gets.chomp
#   break if valid_integer?(num)
#   puts "Invalid integer."
# end
#
# num = num.to_i
# operation = nil
#
# loop do
#   puts "Enter 's' to compute sum, 'p' to compute the product."
#   operation = gets.chomp
#   if operation == 's'
#     puts "The sum of all integers between 1 and #{num} is #{compute_sum(num)}"
#     break
#   elsif operation == 'p'
#     puts "The product of all integers between 1 and #{num} is #{compute_product(num)}"
#     break
#   else
#     puts "Please enter either 's' or 'p'"
#   end
# end

# my way:
# puts "Please enter an integer greater than 0."
# num = gets.chomp.to_i
#
# puts "Enter 's' to compute sum, 'p' to compute the product."
# operation = gets.chomp
#
# arr = (1..num).to_a
#
# if operation == 's'
#   puts "The sum of all integers between 1 and #{num} is #{arr.inject(:+)}"
# elsif operation == 'p'
#   puts "The product of all integers between 1 and #{num} is #{arr.inject(:*)}"
# end




# Algorithm
# - get number and s or p
# - create range between 1 and number
# - convert range to array
# - sum array
# - product array
#
# START
# GET num
# SET num.to_i
# GET and SET operation
# SET array = (1..num).to_a
# IF 's'
# SET sum = array.inject(:+)
# ELSIF 'p'
# product = array.inject(:*)
# END




#
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.
#
#
# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
#
# UTP
# - get an integer greater than 0 and then print the sum or product of all of the
#   integers between 1 and integer
#
# Input
# - integer greater than 0
# - s or p
#
# Test Cases
# - s, 5 => 15
# - p, 6 => 720
#
