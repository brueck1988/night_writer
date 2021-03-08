require 'minitest/autorun'
require 'minitest/pride'
require './lib/alphanumeric_dictionary'

class AlphanumericDictionaryTest < Minitest::Test
  def test_it_exists
    dictionary = AlphanumericDictionary.new([["0."],[".."],[".."]])
    assert_instance_of AlphanumericDictionary, dictionary
  end

  def test_it_has_attributes
    dictionary = AlphanumericDictionary.new([["0."],[".."],[".."]])
    assert_equal [["0."],[".."],[".."]], dictionary.character
  end

  def test_converter
    a = AlphanumericDictionary.new([["0."],[".."],[".."]])
    b = AlphanumericDictionary.new([["0."],["0."],[".."]])
    space = AlphanumericDictionary.new([[".."],[".."],[".."]])
    period = AlphanumericDictionary.new([[".."],["00"],[".0"]])
    undefined_character = AlphanumericDictionary.new("&")

    assert_equal "a", a.converter
    assert_equal "b", b.converter
    assert_equal " ", space.converter
    assert_equal ".", period.converter
    assert_equal "Undefined Character", undefined_character.converter
  end
end
