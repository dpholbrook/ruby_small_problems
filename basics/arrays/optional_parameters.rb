def greeting(name, options = {})
  if options.empty?
    puts "Hello, my name is #{name}"
  else
    puts "Hello, my name is #{name}.  I am #{person[:age]} years old.  I live in #{person[:city]}"
  end
end

greeting(drew, {age: '32', city: 'Crested Butte'})
