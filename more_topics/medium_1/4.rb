def raptors(arr)
  yield(arr)
end

# raptors(%w(raven finch hawk eagle)) do |arr|
#   one, two, *raptors = arr
# end

raptors(%w(raven finch hawk eagle)) do |_, _, *raptors|
  puts raptors
end

def method(_, _, arr)
  puts arr
end

method(['this', 'that', 'the other', 'that other'])
