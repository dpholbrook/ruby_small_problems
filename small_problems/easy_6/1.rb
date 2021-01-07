# you have probably spent about enough time on this problem
# FEX is soveld, bug submitted
# its important to know the use of converting with divmod

=begin

input: float
output: string

rules:
  - convert integer angle into degrees, minutes, seconds
  - us appropriate symbols

algorithm:
  - convert input to minutes and seconds
  - convert minutes to degrees and minutes
  - format accordingly

  - for numbers outside of range
  - if num.abs greater than 360
    - num is remainder of num / 360

    -380 is -20 is 340



108000 seconds / 60 = 1800 minutes / 60 = 30 degrees





=end





SECONDS_IN_MINUTE = 60
MINUTES_IN_DEGREE = 60
SECONDS_IN_DEGREE = 3600
DEGREE = "\xC2\xB0"

# my solution:
# def dms(num)
#   seconds = num * (SECONDS_IN_DEGREE)
#   minutes, seconds = seconds.divmod(60)
#   degrees, minutes = minutes.divmod(60)
#   format(%(%02d#{DEGREE}%02d'%02d"), degrees, minutes, seconds)
# end

# refactored for numbers out of range and negatives:
def dms(num)

  # control for negative numbers and out of range numbers
  if num.negative?
    num = (num.abs > 360) ? (num.abs % 360) : num.abs
    num = 360 - num
  else
    num = (num > 360) ? (num % 360) : num
  end


  seconds = num * (SECONDS_IN_DEGREE)
  degrees, seconds = seconds.divmod(SECONDS_IN_DEGREE)
  minutes, seconds = seconds.divmod(SECONDS_IN_MINUTE)

  format(%(%02d#{DEGREE}%02d'%02d"), degrees, minutes, seconds)
end


# their solution:
# DEGREE = "\xC2\xB0"
# MINUTES_PER_DEGREE = 60
# SECONDS_PER_MINUTE = 60
# SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE
#
# def dms(degrees_float)
#   total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
#   degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
#   minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

p dms(400)
p dms(0)
p dms(76.73)









# input: floating point number
# output: string

# rules:
#   explicit requirements:
#     - floating point number is an angle between 0 and 360 degrees
#     - string represents angle in degrees °, minutes ', and seconds  "
#     - a degree has 60 minutes
#     - a minute has 60 seconds
#     - the returned string starts with % and is in parentheses

# questions:
#   - what is the % in the output?
#   - can we asssume the input is a postive integer?
#   - can we assume that the input is between 0 and 360?

# algorithm
#   convert integer angle input into degrees, minutes, seconds
#     if angle == 0 return '%(0°00'00")'
#     degrees = angle.round
#     minutes = ((angle % 1) * 60).round
#     seconds = (((angle % 1) * 60) % 1).round
#
#   convert degrees, minutes, and seconds to strings
#   join degrees minutes and seconds with the appropriate symbol and formatting
#   return string

# DEGREE = "\xC2\xB0"
#
# def dms(angle)
#   if angle == 0
#     return %(0#{DEGREE}00'00")
#   else
#     degrees, minutes = angle.divmod(1)
#     minutes *= 60
#     minutes, seconds = minutes.divmod(1)
#     seconds *= 60
#   end
#
#   format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
# end

# p dms(76.73)

# test cases:
# p dms(30) == %(30°00'00")
# p dms(76.73) == %(76°43'48")
# p dms(254.6) == %(254°36'00")
# p dms(93.034773) == %(93°02'05")
# p dms(0) == %(0°00'00")
# p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
