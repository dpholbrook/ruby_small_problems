def execute(&block)
  block.call
end

p execute { puts "Hello from inside the block."}

# nothing is printed because the block is not activiated with the .call method
# a proc is returned
