require 'minitest/autorun'

class Test < Minitest::Test
  def setup
    @value = 7
  end

  def test_instance_of_numeric
    assert_kind_of Numeric, @value
  end
end
