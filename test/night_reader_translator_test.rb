require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphanumeric_dictionary'
require './lib/night_reader_translator'

class NightReaderTranslatorTest < Minitest::Test
  def test_it_exists
    night_reader = NightReaderTranslator.new([["0."],[".."],[".."]])

    assert_instance_of NightReaderTranslator, night_reader
  end

  def test_it_has_attributes
    night_reader = NightReaderTranslator.new([["0."],[".."],[".."]])
    assert_equal [["0."],[".."],[".."]], night_reader.text_to_convert
    assert_equal [], night_reader.text_message
  end
end
