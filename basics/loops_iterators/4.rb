def count_down(num)
  puts num
  if num > 0
    count_down(num - 1)
  elsif
    num < 0
    count_down(num + 1)
      if num == -4 # don't really know why this works but it does
        puts "Thought you fooled me, eh?....."
      end # if you take out the if statement it put it at the end as many times as it count down.
  else
    puts "Done!"
  end
end

puts "Gimme a number and I will count down to zero!"
num = gets.chomp.to_i

count_down(num)
