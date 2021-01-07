require 'minitest/autorun'

class NilTest < Minitest::Test
  def setup
    @value = 4
  end

  def test_nil
    assert_nil(@value)
  end
end
