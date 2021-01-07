require 'minitest/autorun'

class NotEmptyTest < Minitest::Test
  def setup
    @list = []
  end

  def test_array_empty
    assert_empty @list
  end
end
