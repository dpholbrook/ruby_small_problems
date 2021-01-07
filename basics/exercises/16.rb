a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

new_a = a.map { |x| x.split }.flatten

p new_a
