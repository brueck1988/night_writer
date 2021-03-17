require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_reader'

class NightReaderTest < Minitest::Test
  def test_it_exists
    reader = NightReader.new

    assert_instance_of NightReader, reader
  end
end
