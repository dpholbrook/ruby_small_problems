# input: -
# output: string
#
# rules:
#   - generate random number between 20 and 200
#   - teddy is that old


# def how_old(name = 'Teddy')
#   age = rand(20..200)
#   puts "#{name} is #{age} years old!"
# end
#
#
# how_old('Drew')
# how_old

age = rand(20..200)

puts "What is your name?"

name = gets.chomp

name = 'Teddy' if name.empty?

puts "#{name} is #{age} years old!"




#========================

# def calculate_age(name = 'Teddy')
#   age = rand(20..200)
#   puts "#{name} is #{age} years old."
# end
#
# puts "What is your name?"
# name = gets.chomp
#
# calculate_age



# - generate random number between 20 and 200
# - print number as teddys age
#
# Test Cases
#
# "Teddy is 40 years old."
#
#
# Data Structure
# - random integer
# - print with string interpolation
#
# Algorithm

#  - call random method on range of numbers from 20 to 200
#  - save to variable
#  - print to screen with string interpolation
#
