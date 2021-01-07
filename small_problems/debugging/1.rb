=begin

We are only reassigning the counter variable local to the method definition to
counter -= 1. In order to have the countdown work, we need to reassign the
local variable counter in the outer scope to counter -= 1. We can do this by
passing counter to the decrease method and reassigning counter to that return value.

=end

def decrease(counter)
  counter - 1
end

counter = 10

counter.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'
