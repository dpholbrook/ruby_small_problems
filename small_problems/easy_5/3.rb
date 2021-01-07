# did well enough, adding guard clauses to handle edge cases.
# doing again isn't totally necesary
# did not do FEX

=begin

input: string
output: intger

rules:
  - input is military time
  - output for first method is minutes after midnight
  -output for second method is minutes before meidnight

algorithm:
  - first two chars to i are hours
  - last two chars to i are minutes
  - add hours converted to minutes plus minutes
  - that is time after midnight
  - time before midnight is 1440 - solution

=end

# solution:
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = 1440
#
# def after_midnight(str)
#   return 0 if str == '24:00'
#   hours = str[0..1].to_i
#   minutes = str[-2..-1].to_i
#   time = (hours * MINUTES_PER_HOUR) + minutes
# end
#
# def before_midnight(str)
#   return 0 if str == '00:00'
#   hours = str[0..1].to_i
#   minutes = str[-2..-1].to_i
#   time = (hours * MINUTES_PER_HOUR) + minutes
#   MINUTES_PER_DAY - time
# end

# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = 1440
#
# def after_midnight(time)
#   hours = (time[0] + time[1]).to_i
#   minutes = (time[3] + time[4]).to_i
#
#   (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
# end
#
# def before_midnight(time)
#   (MINUTES_PER_DAY - after_midnight(time)) % MINUTES_PER_DAY
# end

#TEST CASES
p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

# Algorithm
# MINUTES_PER_HOUR = 60
# MINUTES_PER_DAY = 1440
# convert string to hours and minutes
# hours = str[0] + str[1]
# hours.to_i
# minutes = str[3] + str[4]
# minutes.to_i
#
# convert hours and minutes to minutes after midnight
# minutes_after_midnight = (hours * MINUTES_PER_HOUR + minutes) % (1440)
#
# convert hours and minutes to minutes before midnight
# minutes_before_midnight = MINUTES_PER_DAY - minutes_after_midnight
#
#
#
#
# UTP
# 2 methods
# Input is string time of day in 24 hour format
# one output is number minutes after midnight
# one output is number minutes before midnight
# both return value in range of 0..1439
#
