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
    assert_equal [["0."],[".."],[".."]], night_reader_translator.text_to_translate
    assert_equal [], night_reader_translator.text_message
  end

  def test_translate_to_text
    input = "0.0.0000\n..0....0\n........"
    night_reader_translator = NightReaderTranslator.new(input)

    assert_equal ["abcd"], night_reader_translator.translate_to_text
  end
end


  # def test_make_strings_of_forty_characters_or_less
  #   input =   "abcdefghijklmnopqrstuvwxyz\nabcdefghijklmnopqrstuvwxyz\nabcdefghijklmnopqrstuvwxyz"
  #   night_writer = NightWriterTranslator.new(input)
  #   expected = ["abcdefghijklmnopqrstuvwxyzabcdefghijklmn", "opqrstuvwxyzabcdefghijklmnopqrstuvwxyz"]
  #
  #   assert_equal expected, night_writer.make_strings_of_forty_characters_or_less
  # end
