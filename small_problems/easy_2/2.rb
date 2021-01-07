# input: two integers
# output: string
#
# rules:
#   - output is string with product of two integers and product * 10.7639
#
# algorithm:
#   - initialize square meter to square feet constant
#   - multiply inteeger inputs
#   - multiply product by constant
#   - return string with interpolation

# SQ_METER_TO_SQ_FEET = 10.7639
#
# puts "Emter room length in meters."
#
# length = gets.chomp.to_i
#
# puts "Enter room width in meters."
#
# width = gets.chomp.to_i
#
# square_meters = length * width
# square_feet = square_meters * SQ_METER_TO_SQ_FEET
#
# puts "The area of the room is #{square_meters} square meters (#{format('%.2f', square_feet)} square feet)."

#FEX

SQFEET_TO_SQINCH = 144
SQINCH_TO_SQCENTIMETER = 6.4516


puts "Emter room length in feet."

length = gets.chomp.to_f

puts "Enter room width in feet."

width = gets.chomp.to_f

square_feet = length * width
square_inches = square_feet * SQFEET_TO_SQINCH
square_centimeters = square_inches * SQINCH_TO_SQCENTIMETER

puts "The area of the room is #{square_feet} square feet (#{format('%.2f', square_inches)} square inches, and (#{format('%.2f', square_centimeters)} square centimeters)."




#===========================

# SQUARE_METERS_TO_FEET = 10.7639
#
# puts "What is the length of the room in meters?"
# length_meters = gets.chomp.to_i
#
# puts "What is the width of the room in meters?"
# width_meters = gets.chomp.to_i
#
# area_meters = width_meters * length_meters
#
# area_feet = area_meters * SQUARE_METERS_TO_FEET
#
# puts "The area of the room is #{area_meters.round(2)} square meters " +
#      "and #{area_feet.round(2)} square feet."

#
#
# Algorithm
# - START
# - GET length_meters
# - SET length_meters
# - GET width_meters
# - SET width_meters
# - SET area_meters to length_meters * width_meters
# - SET area_feet to area_meters * 10.7639
# - PRINT area in meters and feet
# - END
#
# UTP
# - ask for length and width of room in meters
# - display area in meters and feet
#
# 1 meter squared == 10.7639 feet squared
#
# Test Cases
# - 10, 10 => 100 square meters (1076.39) square feet
# - 10, 7 => 70.0 square meters (753.47 square feet)
#
# Input
# - lenght of room in meters
# - width of room in meters
#
# Output
# - area in square meters and feet
#
# Data Structure
# - integers
