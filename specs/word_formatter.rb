require 'minitest/autorun'
require_relative '../models/word_formatter.rb'

class TestWordFormatter < MiniTest::Test

  def setup()
    @word_formatter = WordFormatter.new('eh13 zqf')
  end

  def test_upcase()
    assert_equal('EH13 ZQF', @word_formatter.upcase)
  end

end