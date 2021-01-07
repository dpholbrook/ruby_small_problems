=begin
input: string
output: string

rules:
  - input is name
  - output is a greeting
  - if input has !
    - output HAS!

algorithm:
  - get name
  - if name ends with!
    - output yelling
  - else
    - output greeting

=end
#
# puts "What is your name?"
# name = gets.chomp
#
# if name.end_with?('!')
#   puts "HELLO #{name[0..-2].upcase}. WHY ARE WE YELLING?"
# else
#   puts "Hello #{name}."
# end

puts "What is your name?"
name = gets.chomp!

if name.end_with?('!')
  name = name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE YELLING?"
else
  puts "Hello #{name}."
end



# puts "What is your name?"
# name = gets.chomp!
#
# if name[-1] == '!'
#   name = name.chop!
#   puts "HI #{name.upcase}. WHY ARE WE YELLING?"
# else
#   puts "Hello #{name.capitalize} nice to meet you."
# end



#
# get the users name
# if they have an !
#   then respond in all caps
#   otherwise respond normal
#
# START
# GET name
# SET name
# IF name.include? !
# PRINT name.upcase
# ELSE
# PRINT name
# END
