# input: two integers
# output: string
#
# rules:
#   - input is how old ther person is and what age they want to retire
#   - output has current year, when they will retire, how many more years that is

# algorithm:
#   - get persons age
#   - get age they want to retire
#   - generate current year
#   - year of retirment is current year plus
#   - years to retirement

puts "How old are you?"
age = gets.chomp.to_i

puts "At what age do you want to retire?"
retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_retirement = retirement_age - age
retirement_year = years_to_retirement + current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "Only #{years_to_retirement} years of work to go!"





# puts "How old are you?"
# current_age = gets.to_i
# puts "At what age would you like to retire?"
# retirement_age = gets.to_i
#
# years_to_retirement = retirement_age - current_age
# current_year = Time.now.year
# retirement_year = current_year + years_to_retirement
#
# puts "It's #{current_year}. You will retire in #{retirement_year}. \
# You have only #{years_to_retirement} years to go!"






# algorithm
# PRINT how old are you?
# GET and SET current_age
# PRINT at what age would you like to retire?
# GET and SET retirement_age
# SET years_to_retirement (retirement_age - current_age)
# SET current_year
# SET retirement_year (years_to_retirement + current_year)
# PRINT current_year retirement_year, and years_to_retirement
#
# display
# when the user will retire
# how many years until retirement
#
# input
# age
# age of retirement
#
# output
# year
# year of retirement
# years until retirement
#
# test cases
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
