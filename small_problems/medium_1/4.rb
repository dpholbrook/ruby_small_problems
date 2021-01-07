# did this in 15 minutes
# stoked
# but, you might want to do it again just becuase its a little tricky

=begin

input: number
output: array

rules:
  - n is number of switches
  - all lights are initially off
  - lights divisible by count are switched
  - count is 1..n
  - return lights that are on after n times

algorithm:
  - make hash of lights and their status
    - initially off

  - count up from 1 to n
    - if light key is divisible by count
      - toggle status

  - return lights that are on in the end

=end

# def initialize_lights(n)
#   lights = Hash.new(0)
#   1.upto(n) { |count| lights[count] = 'off' }
#   lights
# end
#
# def light_switch(n)
#   lights = initialize_lights(n)
#
#   1.upto(n) do |count|
#     lights.each do |light, status|
#       lights[light] = switch(status) if light % count == 0
#     end
#   end
#
# select_on(lights)
# end
#
# def switch(status)
#   status == 'on' ? 'off' : 'on'
# end
#
# def select_on(lights)
#   lights.select { |light, status| status == 'on' }.keys
# end

# had trouble reassigning values whos keys that met the condition when iterating on the light hash
# was trying to assign the new value to the block parameter rather than the hash key

# input: integer
# output: array
#
# rules:
#   - integer number of lights
#   - all lights are initially off
#   1. all lights divisible by 1 are switched
#   2. all lights divisible by 2 are switched
#   3. all lights divisible by 3 ar switched
#   4. all lights divisible by 4 are switched
#   etc...
#   - repeat nth times
#
#
# [1, 2, 3, 4, 5]
# 1. all on
# 2. 2 and 4 off
# 3. 2, 3, 4 off 1, 5 on
# 4.
#
# algorithm:
#   - initialize a hash with integer keys and all values false
#     - integer times do this
#       - iterate on hash
#         - if key % count == 0 then toggle value (!)
#     - return keys whos value is true

# def light_switch(nth)
#   lights = (1..nth).to_a.product([false]).to_h
#
#   1.upto(nth) do |round|
#     lights.each do |position, state|
#       lights[position] = !state if position % round == 0
#     end
#   end
#
#   lights.select { |position, state| state == true }.keys
# end

# go at their solution with multiple methods:
# initialize lights hash
# def initialize_lights(nth)
#   lights = Hash.new
#   1.upto(nth) { |light| lights[light] = 'off' }
#   lights
# end
#
# # return list of numbers that are on
# def return_on_lights(lights)
#   lights.select { |position, state| state == 'on' }.keys
# end
#
#
# #
# # toggle every nth light
# def toggle_lights(nth, lights)
#   lights.each do |position, state|
#     if position % nth == 0
#       lights[position] = (state == 'on') ? 'off' : 'on'
#     end
#   end
# end
#
# # run entire program
#
# def light_switch(nth)
#   lights = initialize_lights(nth)
#   1.upto(nth) { |round| toggle_lights(round, lights)}
#   return_on_lights(lights)
# end
#
p light_switch(5)
p light_switch(10)
# p light_switch(1000)

# test cases:
p light_switch(5) == [1, 4]
p light_switch(10) == [1, 4, 9]
#
#
# FEX
#
# 1. Each light gets switched if the round number is a factor of the light number
#   Square numbers have an odd number of factors so the get switched an odd number of times
#   All other numbers have an even number of factors and get switched an even number of times
