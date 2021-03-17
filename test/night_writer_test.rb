require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test
  def test_it_exists
    writer = NightWriter.new

    assert_instance_of NightWriter, writer
  end
end
