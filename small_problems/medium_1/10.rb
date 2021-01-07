def fibonacci_last(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, (first + last) % 10]
  end

  last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4

# def fibonacci(nth)
#   first, last = [1, 1]
#   3.upto(nth) do
#     first, last = [last, first + last]
#   end
#   last
# end
#

# this is the obvious way to to it, but slow
#
# def fibonacci_last(nth)
#   fibonacci(nth).to_s[-1].to_i
# end

# this is the faster way
# when computing this, you can just look at the last digit each time which is itself a fib sequence
# you don't have to compute the whol fib number, you can just compute the last digit by using % 10

# def fibonacci_last(nth)
#   first, last = [1, 1]
#
#   3.upto(nth) do # when nth is less than 3, the block of code is not executed
#     first, last = [last, (first + last) % 10]
#   end
#   last
# end
#
# last_fibs = []
#
# 1.upto(60) { |time| last_fibs << fibonacci_last(time)}
#
# p last_fibs.size

# this is the super duper fast way
# i figured this out by verifying that the last fib digit sequence repeats itself after 60
# i put the pattern in an array and use % 60 to see where in the array the nth last fib digit is

# LAST_FIBS = [1, 1, 2, 3, 5, 8, 3, 1, 4, 5, 9, 4, 3, 7, 0, 7, 7, 4, 1, 5, 6, 1,
#              7, 8, 5, 3, 8, 1, 9, 0, 9, 9, 8, 7, 5, 2, 7, 9, 6, 5, 1, 6, 7, 3,
#              0, 3, 3, 6, 9, 5, 4, 9, 3, 2, 5, 7, 2, 9, 1, 0]
#
# def fibonacci_last(nth)
#   LAST_FIBS[(nth % 60) - 1]
# end
#
#





# test cases:
# p fibonacci_last(1)
# p fibonacci_last(2)
# p fibonacci_last(3)
# p fibonacci_last(4)
# p fibonacci_last(5)
# p fibonacci_last(6)
# p fibonacci_last(7)
# p fibonacci_last(8)
# p fibonacci_last(9)
# p fibonacci_last(10)
# p fibonacci_last(123_456_789_987_745)



# p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
# p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4
