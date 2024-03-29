require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphanumeric_dictionary'
require './lib/night_reader_translator'

class NightReaderTranslatorTest < Minitest::Test
  def test_it_exists
    night_reader_translator = NightReaderTranslator.new(["0.","..",".."])

    assert_instance_of NightReaderTranslator, night_reader_translator
  end

  def test_it_has_attributes
    night_reader_translator = NightReaderTranslator.new(["0.","..",".."])
    expected = ["0.","..",".."]
    assert_equal expected, night_reader_translator.braille_to_translate
    assert_instance_of AlphanumericDictionary, night_reader_translator.dictionary
  end

  def test_translate_to_text
    braille_to_translate = "0.0.0000\n..0....0\n........"
    night_reader_translator = NightReaderTranslator.new(braille_to_translate)

    assert_equal ["abcd"], night_reader_translator.translate_to_text
  end

  def test_convert_three_lines_of_braille_arrays_into_one_text_line
    braille_to_translate = "0.0.0000\n..0....0\n........"
    night_writer = NightReaderTranslator.new(braille_to_translate)
    braille_line = ["0.0.0000", "..0....0", "........"]
    expected = "abcd"

    assert_equal expected, night_writer.convert_three_lines_of_braille_arrays_into_one_text_line(braille_line)
  end

  def test_split_braille_at_line_breaks
    braille_to_translate = "0.0.0000\n..0....0\n........"
    night_writer = NightReaderTranslator.new(braille_to_translate)
    expected = ["0.0.0000", "..0....0", "........"]

    assert_equal expected, night_writer.split_braille_at_line_breaks
  end
end
