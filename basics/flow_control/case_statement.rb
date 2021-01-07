b = 4
a = 5

if 3 #this is like if 3 exists then do the next line
  puts "a is 3"
elsif a == 4
  puts "a is 4"
else
  puts "a is neither 3 nor 4"
end

case a
when 5
  puts "a is 5"
when 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end

case a
when a < 0
  "#{a} is a negative ghost writer."
when a <= 50
  "#{a} is between 0 and 50."
when a <= 100
  "#{a} is between 51 and 100."
else
  "#{a} is a friggin yuge numba!"
end

puts case a

answer = case a
when 5
  "a is 5"
when 6
  "a is 6"
else
  "a is neither 5 nor 6"
end

puts answer

case a
when 5
  puts "a is 5"
when !5
  puts "a is not 5"
end
#this doesn't print anything for some reason but no error

case a
when 5
  puts "a is 5"
when !5
  puts "a is not 5"
end

case
when 5 # if 5 exists then do the next line
  puts "a is 5"
when !5 # if 5 does not exist then do the next line
  puts "a is not 5"
end
