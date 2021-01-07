def caps11(string)
  if string.length > 10
    string.upcase + "!!!"
  else
    string
  end
end

puts caps11("i'm a big string")
puts caps11("i'm small")
