require 'minitest/autorun'

class Test < Minitest::Test
  def setup
    @value = nil
  end

  def test_odd
    assert_equal(true, @value.odd?)
  end

  def test_odd_again
    assert(@value.odd?, 'value is not odd')
  end

  def test_nil
    assert_nil(@value)
  end
end
