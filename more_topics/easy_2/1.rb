=begin
  - input: three numbers (a range and a step value)
  - output: output value with each iteration

  rules:
    - on first iteration, output first value
    - on remaining iterations, output prevous value plus step value
    - return original range

  algorithm:
    - create array that is range of low and high value
    - init idx to 0
    - while idx < array size
      - yield arr[idx] to block
      - incriment idx by step
    - return original range
=end

def step(lower, upper, step)
  range = (lower..upper)
  arr = range.to_a

  idx = 0
  while idx < arr.size
    yield(arr[idx])
    idx += step
  end

  range
end

step(1, 10, 3) { |value| puts "value = #{value}" }
