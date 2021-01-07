# my logic was on par
# my coding performance was horrorendous
# do again in less than 5 minutes

=begin

input: string
output: boolean

rules:
  - return true if all of the parentheses are balanced

algorithm:
  - see if count of '(' == count of ')'
  - '(' = 1
  - ')' = -1
    - return false if count is -1

    - split string into array of char
    - iterate on array
    - incriment count variable if '('
    - decriment if ')'
    - if count < 0, return false
    - at the end if count is 0 then return true
    - else return false

=end

def balanced?(str)
  #str.count(')') == str.count('(')
  array = str.chars

  count = 0
  array.each do |char|
    count += 1 if char == '('
    count -= 1 if char == ')'
    end
    return false if count < 0
  end
  count == 0
end

# input: string
# output: boolean
#
# rules:
#   - return true if parenthesis are balanced
#   - false if they are not
# algorithm:
#   - balanced = true
#   - needed = '('
#   - not_needed = ')'
#
#   - if char == needed
#     - switch needed and not needed
#     - switch closed boolean
#   - elsif char 'not needed' then return false
#
#   - returned balanced
# algorithm:
#   - initialize empty array of outstanding parenthesis
#   - iterate through string of chars
#   - if char == '(' add ')' to outstanding
#   - if char == ')' && outstanding is empty return false
#     if char == ')' and array is not empty pop one from outstanding
#   - after iteration if the arry of outstanding is empty, return 'true'

  # def balanced?(str)
  #   outstanding = []
  #   str.chars.each do |char|
  #     if char == '('
  #       outstanding << ')'
  #     elsif char == ')' && outstanding.empty?
  #       return false
  #     elsif char == ')'
  #       outstanding.pop
  #     end
  #   end
  #
  #   outstanding.empty?
  # end


# def balanced?(str)
#   balanced = true
#   needed = '('
#   not_needed = ')'
#
#   str.chars.each do |char|
#     if char == needed
#       balanced = !balanced
#       needed, not_needed = not_needed, needed
#     elsif char == not_needed
#       return false
#     end
#   end
#
#   balanced
# end

# test cases:
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
