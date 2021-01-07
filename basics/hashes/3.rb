ages = {molly: 27, tims: 35, lauren: 35, drew: 32}

# puts ages.keys
# puts ages.values
#
# ages.each_key do |k|
#   puts k
# end
#
# ages.each_v do |v|
#   puts v
# end

ages.each do |k,v|
  puts "#{k} is #{v} years old."
end
