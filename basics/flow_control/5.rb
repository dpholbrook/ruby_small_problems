def evaluate_number(num)
  case
  when num < 0
  puts "#{num} is a negative ghost writer."
  when num <= 50
  puts "#{num} is between 0 and 50."
  when num <= 100
  puts "#{num} is between 51 and 100."
  else
  puts "#{num} is a friggin yuge numba!"
  end
end

puts "Pick a number, any number."
num = gets.chomp.to_i

evaluate_number(num)


#it seems that when you want to use this format:

#case num
#when > 0
#puts "this"

#it does not work. you cant use a comparison operator. it only works for.

#case num
#when 0
#puts "that"

def evaluate_number(num)
  case num
  when 0..50
    puts "#{num} is between 0 and 50"
  when 51..100
    puts "#{num} is between 51 and 100"
  else
    if num < 0
      puts "#{num} is a negative ghost writer."
    else
      puts "#{num} is a yuge friggin' numba!"
    end
  end
end

puts "Pick a number, any number."

num = gets.chomp.to_i

evaluate_number(num)
