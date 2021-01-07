#We are trying to pass a block to a method but we are getting an ArgumentError Message
#The error is telling us that we haven't provided any arguments.
#This is because we need to establish (&block) as the parameter in the method definition to let it know that we are going to pass a block in.
#We can see from the stack trace that the error originated at the beginnon of execution flow in main on line 5 when we tried to invoke the execute method
