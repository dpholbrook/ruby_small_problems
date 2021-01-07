items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*produce, wheat|
  puts produce.join(', ')
  puts wheat
end

# Let's start gathering food.
# apples, corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |fruit, *vegetables , grains|
  puts fruit
  puts vegetables.join(', ')
  puts grains
end

# Let's start gathering food.
# apples
# corn, cabbage
# wheat
# We've finished gathering!

gather(items) do |fruit, *other|
  puts fruit
  puts other.join(', ')
end

# Let's start gathering food.
# apples
# corn, cabbage, wheat
# We've finished gathering!

gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end

# Let's start gathering food.
# apples, corn, cabbage, and wheat
# We've finished gathering!

puts '==================='

def gather(*produce, wheat)
  puts "Let's start gathering food."
  p produce
  puts wheat
  puts "We've finished gathering!"
end

gather(*items)

def gather(apples, *vegetables, wheat)
  puts "Let's start gathering food."
  puts apples
  p vegetables
  puts wheat
  puts "We've finished gathering!"
end

gather(*items)
