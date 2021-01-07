i = 0
loop do
  i += 2
  if i == 4
    next
  end
  puts i
  if i == 10
    break
  end
end

puts "Enter a number and i will count down for you!"

x = gets.chomp.to_i

while x >= 0
  puts x
  x -= 1
end

puts "Done!"
