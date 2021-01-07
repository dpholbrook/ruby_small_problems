class List
  def process
    self
  end
end

require 'minitest/autorun'

class Test < Minitest::Test
  def setup
    @list = List.new
    @process = @list.process
  end

  def test_list_and_process_same_object
    assert_same @list, @process
  end
end
