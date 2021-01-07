# def multiply(arg_1, arg_2)
#   arg_1 * arg_2
# end
#
# def square(arg, power)
#   return 1 if power == 0
#   return arg if power == 1
#   return multiply(arg, arg) if power == 2
#
#   result = multiply(arg, arg)
#   (power - 2).times { result *= arg }
#   result
# end
#
# p square(5,0)
# p square(5,1)
# p square(5,2)
# p square(5,3)
# p square(5,4)


# kishor budhathoki
def multiply(num1, num2)
  num1 * num2
end

def power_to_num(num, exp)
  result = 1
  exp.times { result = multiply(result, num) }
  result
end

p power_to_num(5, 3)

# p square(5,2) == 25
# p square(-8) == 64


# def multiply(num_1, num_2)
#   num_1 * num_2
# end
#
# def num_to_the_power(num, power)
#   multiply(num, num)
# end
#
# p num_to_the_power(6, 3)
