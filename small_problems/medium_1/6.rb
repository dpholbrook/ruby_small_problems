# input: string of operations
# output: print result of operations to screen
#
# rules:
#   - stack is an array
#   - register is an integer
#   n Place a value n in the "register". Do not modify the stack.
#   PUSH Push the register value on to the stack. Leave the value in the register.
#   ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
#   SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
#   MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
#   DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
#   MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
#   POP Remove the topmost item from the stack and place in register
#   PRINT Print the register value
#   - all operations pop the last value from that stack and perform that operation on that value and the register
#     - the register is reassigned to the resulting value
#   - all operations are integer operations
#   - programs are correct
#   - initialize register to 0
#
# algorithm:
#   - initialize stack to empty array
#   - initialize register to 0
#   - break string input into array of string words
#   - iterate on array (each)
#     - case statement for operations
#

def minilang(str)
  stack = []
  register = 0

  str.split.each do |command|
    case command
    when 'PUSH'  then stack << register
    when 'ADD'   then register += stack.pop
    when 'SUB'   then register -= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = command.to_i
    end
  end

end


minilang('5 PUSH 3 MULT PRINT')

# test cases:
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
#15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
