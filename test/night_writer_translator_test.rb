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
    night_writer_translator = NightWriterTranslator.new("AbCd")
    assert_equal "abcd", night_writer_translator.text_to_translate
  end

  def test_make_strings_of_forty_characters_or_less
    input =   "Abcdefghijklmnopqrstuvwxyz\nabcdefghijklmnopqrstuvwxyz\nabcdefghijklmnOpqrstuvwxyZ"
    night_writer_translator = NightWriterTranslator.new(input)
    expected = ["abcdefghijklmnopqrstuvwxyz abcdefghijklm", "nopqrstuvwxyz abcdefghijklmnopqrstuvwxyz"]

    assert_equal expected, night_writer_translator.make_text_lines_of_forty_characters_or_less
  end

  def test_convert_to_braille
    night_writer_translator = NightWriterTranslator.new("AbCd")
    expected = ["0.0.0000\n..0....0\n........"]

    assert_equal expected, night_writer_translator.convert_to_braille
  end

  def test_convert_one_text_line_into_3_lines_of_braille_arrays
    night_writer_translator = NightWriterTranslator.new("AbCd")
    expected = [[["0."], ["0."], ["00"], ["00"]], [[".."], ["0."], [".."], 
                [".0"]], [[".."], [".."], [".."], [".."]]]
  
    assert_equal expected, night_writer_translator.convert_one_text_line_into_three_lines_of_braille_arrays("abcd")
  end

  def test_convert_three_lines_of_braille_arrays_into_three_lines_of_braille_strings
    input = [[["0."], ["0."], ["00"], ["00"]], [[".."], ["0."], [".."], 
              [".0"]], [[".."], [".."], [".."], [".."]]]
    night_writer_translator = NightWriterTranslator.new("AbCd")
    expected = "0.0.0000\n..0....0\n........"
    actual = night_writer_translator.convert_three_lines_of_braille_arrays_into_three_lines_of_braille_strings(input)
    assert_equal expected, actual
  end
end
