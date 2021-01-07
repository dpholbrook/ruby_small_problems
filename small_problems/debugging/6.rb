=begin
A system stack error is like entering an infinite loop.
Just like we need to provide a break condition within a loop,
we need to provide a return condition for a recursive method.
Once that return condition is met, we can start sending return values back to
the method calls.
We can return any value or no value when n == 0 and there are no more items to
move to the done list.
=end


def move(n, from_array, to_array)
  n = from_array.size if n > from_array.size
  return if n == 0
  to_array << from_array.shift
  move(n - 1, from_array, to_array)
end

# Example

todo = ['study', 'walk the dog', 'coffee with Tom']
done = ['apply sunscreen', 'go to the beach']

move(4, todo, done)

p todo # should be: ['coffee with Tom']
p done # should be: ['apply sunscreen', 'go to the beach', 'study', 'walk the dog']


# FEX
# when the todo list is smaller than the number of items to move, the method will
# push nil values from an empty array. We can fix this by reassigning n to the
# size of the from_array if n is bigger than the size of from_array
