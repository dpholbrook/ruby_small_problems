def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("yay")

# the code will not print anything because Ruby exits the method at the explicit return.
# why does it return nil though?  shouldn't it return words + "!!!" or something?

def scream(words)
  words = words.upcase + "!!!!"
  puts words
end

scream("hello")

# puts words is the last expression which returns nil.
