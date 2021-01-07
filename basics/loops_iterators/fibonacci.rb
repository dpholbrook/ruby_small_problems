def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

x = 1

array = Array(1..30)

array.each do |num|
  puts "#{x}. #{fibonacci(num)}"
  x += 1
end
