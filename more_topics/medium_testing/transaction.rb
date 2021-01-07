class Transaction
  attr_reader :item_cost
  attr_accessor :amount_paid

  def initialize(item_cost)
    @item_cost = item_cost
    @amount_paid = 0
  end

  def prompt_for_payment(input: $stdin, output: $stdout) # We've set a default parameter for stdin
    loop do
      output.puts "You owe $#{item_cost}.\nHow much are you paying?"
      @amount_paid = input.gets.chomp.to_f # notice that we call gets on that parameter
      break if valid_payment? && sufficient_payment?
      puts 'That is not the correct amount. ' \
           'Please make sure to pay the full cost.'
    end
  end

  private

  def valid_payment?
    amount_paid > 0.0
  end

  def sufficient_payment?
    amount_paid >= item_cost
  end
end

# create transaction
# before amount paid
# call prompt for payment passing in 15
# after amount paid plus
# assert equal before + 15, after

# input: $stdin is setting the default parameter to $stdin if no argument is given
# we could also use input = $stdin syntax
# this makes it so that when prompt for payment is called, it defaults to $stdin so gets will prompt the user for input
# so the method still works as normal but allows us to pass an input object in that we can call gets on to run tests
# with the appropriate input object, we can call gets.chomp.to_f on it to get a float

# the prompt_for_payment method requires user input (how much they are paying)
# we can't run tests on a method that requires user input
# so, we need to change the method so that it can take user input OR a parameter
# to do this, we provide an optional parameter that defaults to $stdin
# $stdin.gets will still just prompt the user for input
# but, when we run tests, we can pass in an input object StringIO.new('value') to avoid being prompted for payment
# that input object has a #gets method available to it which will return a string value
# we have to use this input object rather than just passing an integer in as an argument to prompt_for_payment
# this is because integer does not have a gets method so our test would raise a NoMethoError
