require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader'

class _Test < Minitest::Test
  def test_it_exists
    night_reader = NightReader.new([["0."],[".."],[".."]])

    assert_instance_of NightReader, night_reader
  end

  def test_it_has_attributes
    night_reader = NightReader.new([["0."],[".."],[".."]])
    assert_equal [["0."],[".."],[".."]], night_reader.text_to_convert
    assert_equal [], night_reader.text_message
  end
end

def test_make_strings_of_forty_characters_or_less
  input =   "abcdefghijklmnopqrstuvwxyz\nabcdefghijklmnopqrstuvwxyz\nabcdefghijklmnopqrstuvwxyz"
  night_writer = NightWriter.new(input)
  expected = ["abcdefghijklmnopqrstuvwxyzabcdefghijklmn", "opqrstuvwxyzabcdefghijklmnopqrstuvwxyz"]

  assert_equal expected, night_writer.make_strings_of_forty_characters_or_less
end

def test_convert_to_braille
  night_writer = NightWriter.new("abcd")
  expected = ["0.0.0000\n..0....0\n........"]

  assert_equal expected, night_writer.convert_to_braille
end
