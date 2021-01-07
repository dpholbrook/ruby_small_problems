=begin

input: number greater than 0
output: boolean

rules:
  - is a leap year
    - if divisible by 4
    - but not if divisible by 100
    - unless it is divisible by 400

    - works for years > 0

algorithm:
  - if divisible by 4 but not 100 is true
    - then it is a leap year
  - if false but divisble by 400 then leap year


=end

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end




# ==========================


# def leap_year?(year)
#   if year % 100 == 0
#     false
#   elsif year % 400 == 0
#     true
#   else
#     year % 4 == 0
#   end
# end

# def leap_year?(year)
#   if year % 4 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else year % 400 == 0
#   end
# end


# def leap_year?(year)
#   if (year % 4 == 0) && (year % 100 != 0)
#     true
#   elsif (year % 400 == 0)
#     true
#   else
#     false
#   end
# end

p leap_year?(4)

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
