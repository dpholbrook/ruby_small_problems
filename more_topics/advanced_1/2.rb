# Group 1
# my_proc = proc { |thing| puts "This is a #{thing}." }
# puts my_proc
# puts my_proc.class
# my_proc.call
# my_proc.call('cat')

# A proc can be created with proc { |param| code } syntax in addition to Proc.new { |param| code }
# Procs seem to have leniant arity. Even if the proc has a parameter, we don't have to pass it an argument. It will assign the proc local variable to nil.

# Group 2
# my_lambda = lambda { |thing| puts "This is a #{thing}." }
# my_second_lambda = -> (thing) { puts "This is a #{thing}." }
# puts my_lambda
# puts my_second_lambda
# puts my_lambda.class
# my_lambda.call('dog')
# # my_lambda.call
# # my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }
# my_second_lambda.call('dog')

# A lambda is created with lambda { |param| code } or -> (param) { code } syntax
# A lambda is a type of Proc object. In fact, it is part of the Proc class.
# Lambdas do not have leniant arity. If a lambda is defined to take an argument, we must pass it one or it will raise an argument error.
# We seemingly can not create a Lambda with the Lambda.new syntax

# Group 3
# def block_method_1(animal)
#   yield
# end
#
# block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# If we yield to a block in a method and don't use if block_given? syntax, we must pass a block to the method or it will raise a LocalJumpError.
# Blocks have leniant arity. Even if our block takes an arguemnt, we don't have to pass it one. In that case, it will assign the block local variable to nil.

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# We can pass a block more or less arguments than it is defined to take.
# But, we can not use a block local variable that has not been defined by a parameter.

# Blocks are a type of Proc that can be implicitly passed to any method. A block can not be saved to a local variable and has leniant arity.
# Procs, can be saved to local variables and have leniant arity.
# Lambdas can be saved to local variables but do not have leniant arity.
