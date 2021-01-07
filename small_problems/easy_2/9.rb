# The second example ouputs BOB twice. Both local variables, name and save_name point to the same string object 'Bob'.
# When we call the upcase! method on the string object 'Bob', its value is mutated to 'BOB'.
# Both variables are still pointing at the same string object whos value is now 'BOB'.

=====================

name = 'Bob'
save_name = name
name = 'Alice' # name reassigned to 'Alice'
puts name, save_name # prints Alice Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# name and save_name are assigned to the string object Bob.
# the destructive method upcase! is invoked on name which references the string object 'Bob'
# the original string object 'Bob' is mutated by the upcase! method
# so when puts is invoked on name and save_name, the string object that they reference, BOB is printed twice
