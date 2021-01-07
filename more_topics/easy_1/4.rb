=begin
  input: positive integer
  output: array of integers

  rules:
    - return all all divisors of input

  algorithm:
    - init divisors array
    - 1 upto input number
      - see if input is divisible by count
        - if so, push to divisors array
=end

def divisors(num)
  div_arr = []

  # 1.upto(num) do |count|
  #   div_arr << count if num % count == 0
  # end
  #
  # div_arr

  (1..num).select { |candidate| num % candidate == 0 } # this also works
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(48)
# p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
