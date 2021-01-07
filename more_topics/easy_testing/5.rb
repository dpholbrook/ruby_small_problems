require 'minitest/autorun'

class IncludedTest < Minitest::Test
  def setup
    @list = ['xyz', 123]
  end

  def test_in_array
    assert_includes @list, 'xyz'
  end
end
