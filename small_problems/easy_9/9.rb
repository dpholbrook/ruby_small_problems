=begin

input: three numbers
output: string

rules:
  - determine average
  - return letter associated

algorithm:
  - calculate average
  - case statement for grade
  - return grade

=end

def get_grade(a, b, c)
  average = (a + b + c) / 3

  case average
  when (91..100) then 'A'
  when (81..90)  then 'B'
  when (71..80)  then 'C'
  when (61..70)  then 'D'
  else                'F'
  end
end


# input: three numbers
# output: string
#
# rules:
#   - determine the average of the three numbers
#   - between
#     - 90 and 100 'A'
#     - 80 and 90 'B'
#     - 70 and 80 'C'
#     - 60 and 70 'D'
#     - 0 and 60 'F'
#   - input numbers will always be between 0 and 100
#
# questions:
#   - are the numbers integers?
#   - can they be floats?
# algorithm:
#   - average the three numbers
#     - sum numbers
#     - divide by 3
#
#   - use case statment to determine grade string value

# def get_grade(num1, num2, num3)
#   average = (num1 + num2 + num3) / 3
#
#   case average
#   when 90..100 then 'A'
#   when 80..89  then 'B'
#   when 70..79  then 'C'
#   when 60..69  then 'D'
#   when 0..59   then 'F'
#   else              'A+'
#   end
# end


p get_grade(95, 90, 93)
p get_grade(100, 100, 110)

# test cases:
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"


# # funny:
# def ls_assessment_outcome(score)
#   case score
#   when 90..100 then "PASS"
#   when 80..89  then "MAYBE"
#   else              "NOT YET"
#   end
# end
#
#
#
# p ls_assessment_outcome(60)
