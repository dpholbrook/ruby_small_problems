# def compute
#   if block_given?
#     yield
#   else
#   'Does not compute.'
#   end
# end

def compute(arr)
  if block_given?
    yield(arr)
  else
  'Does not compute.'
  end
end


p compute([5, 3]) { |arr| arr[0] + arr[1] } == 8
p compute(['a', 'b']) { |arr| arr[0] + arr[1] } == 'ab'
p compute([5, 3]) == 'Does not compute.'
