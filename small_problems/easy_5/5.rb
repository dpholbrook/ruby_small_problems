# def cleanup(str)
#   p str.gsub(/[^A-z0-9]/, ' ').squeeze(' ')
# end

# def cleanup(str)
#   str.gsub!(/[^A-z0-9]/, ' ')
#
#   while str.include?('  ')
#     str.gsub!('  ', ' ')
#   end
#   str
# end


cleanup("---what's myy +*& line?")

p cleanup("---what's my +*& line?") == ' what s my line '



# .squeeze gets rid of consectutive spaces
# I was trying to do it manually and had trouble
# try to implement squeeze manually
# FEX is done

=begin

input: string
output: string

rules:
  - replace all non alpha chars with space
  - no consecutive spaces

algorithm:
  - replace all non alpha chars with a space
  - get rid of consecutive spaces


=end






# def cleanup(str)
#   result = str.gsub(/[^A-z]/, ' ').squeeze(' ')
# end

#FEX

# CHARS = ('a'..'z').to_a + ('A'..'Z').to_a
# CHARS = ('A'..'z')
#
# def cleanup(str)
#   str.chars.map { |char| CHARS.include?(char) ? char : ' ' }.join.squeeze(' ')
# end


# p cleanup("---what's my +*& line?")
#
# p cleanup("---what's my +*& line?") == ' what s my line '












#without regex
# def cleanup(str)
#   str.chars.map { |char| ('A'..'z').include?(char) ? char : ' '}.join.squeeze(' ')
# end

# def cleanup(str)
#   str.gsub(/[^a-z]/i, ' ').squeeze(' ')
# end

# p cleanup("---what's  my +*& line?")
#
# # TEST CASES
# p cleanup("---what's my +*& line?") == ' what s my line '

# UTP
# input is a string
# return the string with non alpha numeric characters replaced by spaces
# split into array of characters
# if (a..z).include?(char) return char
# else return ' '
# no consecutive spaces
#
# ALGORITHM
# replace non alpha numberic characters with a space
# eliminate consecutive spaces
