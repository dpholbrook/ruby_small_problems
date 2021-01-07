array = [1, 2, 3, 4, 5]

new_array = []

array.each do |x|
  new_array.push(x + 2)
end

p array

p new_array



array = [1, 2, 3, 4, 5]

new_array = array.map { |x| x + 2 }

p array

p new_array
