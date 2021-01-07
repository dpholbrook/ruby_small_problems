it will output names with c and s capitalized
on `line 3` we push all of the values to a new array
then, we destructively upcase the values in the first array
the elements in the first and second array are referencing the same objects so when they are mutated, both arrays show those mutated values.


array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value } # array2 = [Moe, Larry, Curly, Shemp, Harpo, Chico, Groucho, Zeppo]
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# array2 = [Moe, Larry, Curly, Shemp, Harpo, Chico, Groucho, Zeppo]
# does array2 get modified to:
# array2 = [Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo]

# yes i believe that it will
