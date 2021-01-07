# was able to do it pretty well but see if you can do it again
# did not do FEX

=begin

input: integer
output: string

rules:
  - input is minutes before or after mindnight
  - input can be any integer
    - must account for more than 24 hours worth
  - output is military time of day
  - can't use date and time class

algorithm:
  - change input minutes to remainder of % 1440
  - hours, minutes = input.divmod(MINUTES_PER_HOUR)

=end

# solution:
# MINUTES_PER_DAY = 1440
# MINUTES_PER_HOUR = 60
#
# def time_of_day(num)
#   num = num % MINUTES_PER_DAY
#   hours, minutes = num.divmod(MINUTES_PER_HOUR)
#   format('%02d', hours) + ':' + format('%02d', minutes)
# end



p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"








# =========================

























# MINUTES_PER_HOUR = 60
# HOURS_PER_DAY = 24
# MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR
#
# def time_of_day(num)
#   absolute_time = num % MINUTES_PER_DAY
#   hours, minutes = absolute_time.divmod(60)
#   format('%02d:%02d', hours, minutes)
#
# end
#
# p time_of_day(-1500)
# p time_of_day(0)
# p time_of_day(1500)
# p time_of_day(30)
# p time_of_day(-30)


# TIME = ['00', '01', '02', '03', '04', '05', '06', '07', '08', '09']
#
# def time_of_day(num)
#   num = num % 1440 if num > 1440
#   num = -(num.abs % 1440) if num < -1440
#
#   num < 0 ? base_hours = 24 : base_hours = 0
#   base_minutes = 0
#
#   hours_minutes = num.divmod(60)
#   hours = hours_minutes[0]
#   minutes = hours_minutes[1]
#
#   hours += base_hours
#   hours = TIME[hours] if hours < 10
#   minutes += base_minutes
#   minutes = TIME[minutes] if minutes < 10
#
#   result = hours.to_s + ':' + minutes.to_s
# end




# p time_of_day(0)
# p time_of_day(-3)
# p time_of_day(35)
# p time_of_day(1)
#
# p time_of_day(0) == "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"
#
# Algorithm
# single digit time converstion array
# convert number into hours_minutes array
# if number negative
#   base hour is 24
# if number positive
#   base hour is 0
# base minutes is 0
# hours = hours_minutes[0]
# minutes = hours_minutes[1]
# if hours < 10 use time conversion and assign to hours
# if minutes < 10 use time conversion and assign to minutes
#
#
# result = hours.to_s + ':' + minutes.to_s
# format to have a 0 in front

# how to turn 5 into 05 and 0 into 00 etc

# input is a number of minutes
#   positive is after midnight
#   negative is before midnight
# output is the time of day in "hh:mm"
# should work with any integer input
#
# 35.divmod(60) returns [0, 35]
# -3.divmod(60) returns [-1, 57]
#
# if number is positive you could add it to [00,00]
#   ex [00,00] + [0, 35] = [0, 35]
#   hours = 0.to_s
#   minutes = 35.to_s
#   result = hours + : + minutes
#
# if number is negative, you could subtract it from [24, 00]
#   ex [24,00] + [-1, 57] = [23, 57]
