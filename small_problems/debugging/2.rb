=begin

We call chars on the string object 'you' which creates an array of string
characters. This array is a new object and each string char is a new string
object. So, even though each letter is destructively upcased it does not affect
the original string 'you'. In order to do that, we need to destructivly upcase
'you'.

=end

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')
