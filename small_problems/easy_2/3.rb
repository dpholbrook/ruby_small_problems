# input: two integers
# output: two floats
#
# rules:
#   - input is bill and tip percentage
#   - output is tip amount and total amount
#
# algorithm:
#   - get bill amount
#   - get tip percentage
#
#   - tip is percentage / 100 * bill
#   - total is tip plus bill

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What's a good tip percentage around here?"
tip_percent = gets.chomp.to_f

tip = (tip_percent / 100) * bill
total = tip + bill

puts "The tip is $#{format('%.2f', tip)}."
puts "The total is $#{format('%.2f', total)}."


p format('%.2f', tip)





#their solution


# print 'What is the bill? '
# bill = gets.chomp
# bill = bill.to_f
#
# print 'What is the tip percentage? '
# percentage = gets.chomp
# percentage = percentage.to_f
#
# tip   = (bill * (percentage / 100)).round(2)
# total = (bill + tip).round(2)
#
# puts "The tip is $#{sprintf('%.2f', tip)}"
# puts "The total is $#{sprintf('%.2f', total)}"



#my solution is totally overdone

# def valid?(bill)
#     bill.to_i.to_s == bill && bill.to_i > 0
# end
#
# def valid_percentage?(amount)
#   (1..100).include?(amount)
# end
#
#
# bill = nil
#
# loop do
#   puts "How much is the bill?"
#   bill = gets.chomp
#   break if valid?(bill)
#   puts "Invalid bill amount. Please enter a number greater than zero."
# end
#
# bill = bill.to_f
#
# percentage = nil
#
# loop do
#   puts "What is the tip percentage? (enter 15 for 15%)"
#   percentage = gets.chomp.to_f
#   break if valid_percentage?(percentage)
#   puts "Invalid percentage. Please enter a number between 1 and 100."
# end
#
# tip_amount = bill * (percentage / 100)
# total_bill = bill + tip_amount
#
# puts "You should leave a $#{tip_amount.round(3)} tip.  Your total bill is $#{total_bill}."


# Algorithm
# START
# positive non zero float validation method
# float between 1 and 100 method
# GET bill
# GET tip percentage
# SET tip_amount = bill * (tip_percentage / 100)
# SET total_bill = bill + tip_amount
# PRINT tip_amount and total_bill
# END
#
# UTP
# - tip calculator
# - prompt for bill amount and tip rate
# - compute tip
# - display tip and total amount of bill with tip
#
# Input
# - bill
#   - validate for positive non zero float
# - tip percentage
#   - validate for float between 1 and 100
#
# Output
# - tip
# - total bill
# - both floats with two decimal places
#
#
# Test Cases
#
# What is the bill? 200
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0
#
# What is the bill? 0
# What is the tip percentage? 15
#
# The tip is $30.0
# The total is $230.0
#
#
#
