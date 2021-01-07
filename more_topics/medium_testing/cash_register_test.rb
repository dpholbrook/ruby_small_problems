=begin
  - we are testing the accept_money instance method
  - accpt money is called on cash register object and a transaction object is passed in
  - the total money of the cash register is incrimented by the amount paid of the transaction
  - to test that this is working, we need to
    - instantiate cash register with an amount
    - instantiate transaction with a cost
    - change the amount paid of the transaction
    - establish the value of the register before
    - accept money
    - establish the value of the register after
    - assert that before + amount paid equals after
=end

require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  # def setup
  #   @cash_register = CashRegister.new(0)
  #   @transaction = Transaction.new(10)
  #   @transaction.amount_paid = 10
  # end


  def test_accept_money
    register = CashRegister.new(0)
    transaction = Transaction.new(10)
    transaction.amount_paid = 10

    before = register.total_money
    register.accept_money(transaction)
    after = register.total_money

    assert_equal before + 10, after
  end

  def test_change
    register = CashRegister.new(0)
    transaction = Transaction.new(10)
    transaction.amount_paid = 15
    change = register.change(transaction)

    assert_equal 5, change
  end

  def test_give_receipt
    register = CashRegister.new(0)
    item_cost = 10
    transaction = Transaction.new(item_cost)

    assert_equal 10, transaction.item_cost
    assert_output "You've paid $#{item_cost}.\n" do
      register.give_receipt(transaction)
    end
  end
end
