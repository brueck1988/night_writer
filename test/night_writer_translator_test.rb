require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_dictionary'
require './lib/night_writer_translator'

class NightWriterTranslatorTest < Minitest::Test
  def test_it_exists
    night_writer_translator = NightWriterTranslator.new("abcd")

    assert_instance_of NightWriterTranslator, night_writer_translator
  end

  def test_it_has_attributes
    night_writer_translator = NightWriterTranslator.new("abcd")

    assert_equal "abcd", night_writer_translator.text_to_translate
    assert_equal [], night_writer_translator.braille_message
  end

  def test_make_strings_of_forty_characters_or_less
    input =   "abcdefghijklmnopqrstuvwxyz\nabcdefghijklmnopqrstuvwxyz\nabcdefghijklmnopqrstuvwxyz"
    night_writer_translator = NightWriterTranslator.new(input)
    expected = ["abcdefghijklmnopqrstuvwxyz abcdefghijklm", "nopqrstuvwxyz abcdefghijklmnopqrstuvwxyz"]

    assert_equal expected, night_writer_translator.make_strings_of_forty_characters_or_less
  end

  def test_convert_to_braille
    night_writer_translator = NightWriterTranslator.new("abcd")
    expected = ["0.0.0000\n..0....0\n........"]

    assert_equal expected, night_writer_translator.convert_to_braille
  end
end
