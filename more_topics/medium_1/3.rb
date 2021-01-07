items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  puts yield(items) if block_given?
  puts "Nice selection of food we have gathered!"
end

gather(items) { |items| items.join('! And.. ') }
