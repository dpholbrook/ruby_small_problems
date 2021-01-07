def each(arr)
  counter = 0

  while counter < arr.size
    yield arr[counter]
    counter += 1
  end
end

a = [*1..10]

each(a) { |num| puts num }
