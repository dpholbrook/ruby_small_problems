puts "Enter a number and i will count down for you!"

x = gets.chomp.to_i

while x >= 0
  puts x
  x = x - 1
end

puts "Done!"
