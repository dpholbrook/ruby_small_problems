capitals = {colorado: 'denver', vermont: "montpelier"}

if capitals.has_value?("montpelier")
  puts "#{capitals[:vermont]} is in the hash."
else
  puts "#{capitals[:vermont]} is not in the hash."
end
