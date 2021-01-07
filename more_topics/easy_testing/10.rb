require 'minitest/autorun'

class TestForXyz < Minitest::Test
  def setup
    @list = ['abc', 'hij']
  end
  def test_for_xyz
    refute_includes @list, 'xyz'
  end
end
