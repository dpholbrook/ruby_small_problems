def fibonacci(num)
  a = 1
  b = 1
  fib = 1

  3.upto(num) do |count|
    fib = a + b
    a = b
    b = fib
  end
  fib
end


# input: integer
# output: integer
#
# rules:
#   - write a fibonacci method that does not use recursion
#   - n is the nth fibonacci number
#     - return the fibonacci number
#
# algorithm:
#   - return 1 if n is 1 or 2
#   - a and b are the last two fibonacci numbers
#   - c is the current fibonacci number
#   - initialize a and b to 1
#   - initialize c to reference a plus b
#   - the first iteration is fib(3)
#   - num - 2 times do that

# def fibonacci(n)
#   return 1 if n <= 2
#
#   a = 1
#   b = 1
#   c = 0
#   (n - 2).times do
#     c = a + b
#     a = b
#     b = c
#   end
#   c
# end

# test cases:
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501
p fibonacci(1)
p fibonacci(1)
p fibonacci(2)
p fibonacci(3)
p fibonacci(4)
p fibonacci(5)
p fibonacci(6)
p fibonacci(7)
p fibonacci(8)
p fibonacci(9)
p fibonacci(10)
p fibonacci(11)
p fibonacci(12)
p fibonacci(13)
p fibonacci(14)
p fibonacci(15)
p fibonacci(16)
p fibonacci(17)
p fibonacci(18)
p fibonacci(19)
p fibonacci(20)
