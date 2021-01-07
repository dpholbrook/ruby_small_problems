arr = [1, 3, 5, 7, 9, 11]

puts "What number would you like to look for in the array?"

number = gets.chomp.to_i

if arr.include?(number)
  puts "#{number} is in the array."
else
  puts "#{number} is not in the array."
end


arr.each do |num|
  if number == num 
    puts "#{num} is in the array."
  end
end
