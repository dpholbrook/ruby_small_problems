loop do
  puts "One, two, three, four. Uno, dos, tres, cuatro."
  puts "Do you want me to say that again?"
  answer = gets.chomp
  if answer.downcase != "y"
    break
  end
end
