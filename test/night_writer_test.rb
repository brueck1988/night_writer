require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_dictionary'
require './lib/night_writer'

class NightWriterTest < Minitest::Test
  def test_it_exists
    night_writer = NightWriter.new("abcd")
    assert_instance_of NightWriter, night_writer
  end

  def test_it_has_attributes
    night_writer = NightWriter.new("abcd")

    assert_equal "abcd", night_writer.message
    assert_equal [], night_writer.braille_message
  end

  def test_it_has_attributes
    night_writer = NightWriter.new("abcd")
    expected = ["0.0.0000\n..0....0\n........"]
    assert_equal expected, night_writer.convert_to_braille
  end
end
