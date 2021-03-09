require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader_translate'

class NightReaderTranslateTest < Minitest::Test
  def test_it_exists
    night_reader = NightReaderTranslate.new([["0."],[".."],[".."]])

    assert_instance_of NightReaderTranslate, night_reader
  end

  def test_it_has_attributes
    night_reader = NightReaderTranslate.new([["0."],[".."],[".."]])
    assert_equal [["0."],[".."],[".."]], night_reader.text_to_convert
    assert_equal [], night_reader.text_message
  end
end
