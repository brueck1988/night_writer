require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphanumeric_dictionary'
require './lib/night_reader_translator'

class NightReaderTranslatorTest < Minitest::Test
  def test_it_exists
    night_reader_translator = NightReaderTranslator.new([["0."],[".."],[".."]])

    assert_instance_of NightReaderTranslator, night_reader_translator
  end

  def test_it_has_attributes
    night_reader_translator = NightReaderTranslator.new([["0."],[".."],[".."]])
    expected = [["0."],[".."],[".."]]
    assert_equal expected, night_reader_translator.braille_to_translate
    assert_equal [], night_reader_translator.text_message
  end

  def test_translate_to_text
    input = "0.0.0000\n..0....0\n........"
    night_reader_translator = NightReaderTranslator.new(input)

    assert_equal ["abcd"], night_reader_translator.translate_to_text
  end

  def test_split_braille_at_line_breaks
    input = "0.0.0000\n..0....0\n........"
    night_writer = NightReaderTranslator.new(input)
    expected = ["0.0.0000", "..0....0", "........"]

    assert_equal expected, night_writer.split_braille_at_line_breaks
  end
end
