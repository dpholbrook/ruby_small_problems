require 'minitest/autorun'

require_relative 'swap_letters'

class SwapLettersTest < Minitest::Test
  def setup
    @file = File.open('./sample_text.txt', 'r')
    @string = @file.read
    @text = Text.new(@string)
  end

  def test_swap
    swapped = @string.gsub('a', 'e')
    assert_equal swapped, @text.swap('a', 'e')
  end

  def test_word_count
    word_count = @string.split.count
    assert_equal word_count, @text.word_count
  end

  def teardown
    @file.close
    # puts "File has been closed: #{@file.closed?}."
  end
end
