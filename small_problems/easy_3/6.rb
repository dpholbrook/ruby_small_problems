# input: 2 conditionals
# output: boolean
#
# rules:
#   - return true if one conditinal evaluates to true
#   - false otherwise
#
#   - &&
#     - true true == true
#     - true false == false
#     - false false == false
#
#   - ||
#     - true true == true
#     - true false == true
#     - false false == false
#
#
#   - xor
#     - true true == false
#     - true false == true
#     - false false == false

  def xor?(a, b)
    ((a && b) || (a || b)) && !(a && b)
  end

  p xor?(true, true) == false
  p xor?(false, false) == false
  p xor?(false, true) == true
  p xor?(true, false) == true


# ====================

# def xor?(value_1, value_2)
#   (value_1 || value_2) && !(value_1 && value_2)
# end

# super clever:
# def xor?(v1, v2)
#     v1 ? !v2 : v2
# end

# if the first value is true, then return the opposite of the second value
#   -
# if the first value is false, then return the second value

# p xor?(true, true)
# p xor?(false, false)
# p xor?(false, true)
# p xor?(true, false)
#
# p xor?(5.even?, 4.even?) == true
# p xor?(5.odd?, 4.odd?) == true
# p xor?(5.odd?, 4.even?) == false
# p xor?(5.even?, 4.odd?) == false


# the xor method cannont perform short circut evalualtion of its operands
# it always has to evaluate the second operand to see if it is true or false
