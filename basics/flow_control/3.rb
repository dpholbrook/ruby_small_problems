puts "Pick a number, any number."
num = gets.chomp.to_i

if num < 0
  puts "#{num} is a negative ghost writer."
elsif num <= 50
  puts "#{num} is between 0 and 50."
elsif num <= 100
  puts "#{num} is between 51 and 100."
else
  puts "#{num} is a friggin yuge numba!"
end
