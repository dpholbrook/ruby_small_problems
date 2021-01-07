def bro_brah(name, hash = {})
  if hash.empty?
    puts "Bro, I'm #{name}."
  else
    puts "Sup Brah!  Mi nome is #{name}.  I'm #{hash[:age]} and I totes like #{hash[:likes]} in #{hash[:city]}."
  end
end

bro_brah("Drew", age: 32, likes: "getting sick", city: "Crested Butte")


def greeting(name, options = {})
  if options.empty?
    puts "Hello, my name is #{name}"
  else
    puts "Hello, my name is #{name}.  I am #{options[:age]} years old.  I live in #{options[:city]}"
  end
end

greeting('drew', {age: '32', city: 'Crested Butte'})
