h = {a:1, b:2, c:3, d:4}

p h[:b]

h[:e] = 5

p h

new_h = h.delete_if { |key, value| value < 3.5 }

p new_h
