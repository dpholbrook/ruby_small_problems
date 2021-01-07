require 'minitest/autorun'

class Test < Minitest::Test
  def setup
    @value = Numeric.new
  end

  def test_instance_of_numeric
    assert_instance_of Numeric, @value
  end
end
