=begin

The problem here is that when we create our password in the set_password
method definition, we are initializing a new password variable local to the
method definition only. The local variable password in the outer scope, still
points to nil because it is not available within the method definitions.

This same issue, the fact that method definition are self contained in regards
to local variables, means that the verify_passwords method definition does not
have access to the local variable passwords. So, when password is referenced
we get an undefined local variable error.

In order to set the password, the set password method has to return a value that
is then reassigned to the local variable password in the outer scope.

We can however add a password parameter to the verify_password method definition.
verify_password can use the value that password points to in order to verify
that the password is correct.



=end


password = nil

def set_password
  puts 'What would you like your password to be?'
  new_password = gets.chomp
end

def verify_password(password)
  puts '** Login **'
  print 'Password: '
  input = gets.chomp

  if input == password
    puts 'Welcome to the inside!'
  else
    puts 'Authentication failed.'
  end
end

if !password
  password = set_password
end

verify_password(password)
