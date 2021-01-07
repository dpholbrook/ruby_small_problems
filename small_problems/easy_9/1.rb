# input: array and hash
# output: string
#
# rules:
#   - array has two or more elements
#     - combine with spaces to procuce name
#   - hash has two keys
#   - return greeting with full name and title
#
# algorithm:
#   - return string
#     - join array items with space
#     - refernce hash values

def greetings(arr, hsh)
  name = arr.join(' ')
  profession = "#{hsh[:title]} #{hsh[:occupation]}"

  "Hello, #{name}! Nice to have a #{profession} around."
end

# input: an array and a hash
# output: string
#
# rules:
#   - array has at least 2 elements that combined with spaces, form a name
#   - hash has exactly 2 keys with appropriate values
#     - title
#     - occupation
#   - return string that is a greeting using persons full name and title
#
# questions:
#   - non string elements in array?
#   - hash non string values?
#
# algorithm:
#   - initialize name variable assigned to
        # - join string elements from array into one string
    # - initialize variable title assigned to string referencing hash values
#   - put 1st value and 2nd value from hash into a string
#   - use string interpolation to combine strings

# def greetings(arr, hsh)
#   name = arr.join(' ')
#   title = "#{hsh[:title]} #{hsh[:occupation]}"
#
#   "Hello, #{name}! Nice to have a #{title} in the house."
# end


# test cases:

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
