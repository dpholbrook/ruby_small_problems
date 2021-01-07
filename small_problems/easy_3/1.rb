# input: 6 numbers
# output: string
#
# rules:
#   - output describes whether the 6th number appears in the first 5 numbers
#
# alborithm:
#   - get the 6 numbers and save to variables
#   - put them into an array
#   - count occurances of 6th number
#     - if > 1 then output that the number appears in the array
#     - else number does not

numbers = []

1.upto(6) do |iteration|
  puts "Enter number #{iteration}."
  numbers << gets.chomp.to_i
end

sixth = numbers.pop

if numbers.include?(sixth)
  puts "The number #{sixth} appears in #{numbers}."
else
  puts "The number #{sixth} does not appear in #{numbers}."
end


# numbers = []
#
# order = %w(first second third fourth fifth sixth)
#
# order.each do |nth|
#   puts "Enter the #{nth} number."
#   nth_number = gets.chomp.to_i
#   numbers << nth_number
# end
#
# sixth_number = numbers.pop
#
# if numbers.include?(sixth_number)
#   puts "The number #{sixth_number} appears in #{numbers}."
# else
#   puts "The number #{sixth_number} does not appear in #{numbers}."
# end






# get 6 numbers
# describe whether the 6th number appears in the array of the first 5 numbers
#
# START
# SET numbers = []
# GET number 1 to_i
# SET first number
# push first number to numbers
# repeat for all 6 numbers
# SET sixth number = number.pop
# IF numbers.include?(sixth number)
# PRINT the number __ appears in numbers
# ELSE
# PRINT the number does not appear in numbers
#
# TEST CASES
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].
#
#
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].
#
#
