def valid_series?(nums)
  return false if nums.sum != 47

  odd_count = nums.count { |n| n.odd? }
  odd_count == 3 #= used instead of ==
end

p valid_series?([5, 6, 2, 7, 3, 12, 4, 8])        # should return true
p valid_series?([1, 12, 2, 5, 16, 6])             # should return false
p valid_series?([28, 3, 4, 7, 9, 14])             # should return false
p valid_series?([20, 6, 9, 4, 2, 1, 2, 3])        # should return true
p valid_series?([10, 6, 19, 2, 6, 4])             # should return false

# the last test case was evaluating to true because odd_count = 3 evaluates to true so true is returned by the ternary operator
# the ternary operator is not necessary because the method will return false if
# the sum does not equal 47 and odd_count == 3 which is the last expression
# evaluate in the method, will cause the method to return true or false accordingly
