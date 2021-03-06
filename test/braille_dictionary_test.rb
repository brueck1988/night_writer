require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_dictionary'

class BrailleDictionaryTest < Minitest::Test
  def test_it_exists
    braille_dictionary = BrailleDictionary.new("a")
    assert_instance_of BrailleDictionary, braille_dictionary
  end

  def test_it_has_attributes
    braille_dictionary = BrailleDictionary.new("a")

    assert_equal "a", braille_dictionary.character
  end

  def test_converter
    a = BrailleDictionary.new("a")
    b = BrailleDictionary.new("b")
    space = BrailleDictionary.new(" ")
    period = BrailleDictionary.new(".")
    undefined_character = BrailleDictionary.new("&")

    assert_equal [["0."],[".."],[".."]], a.converter
    assert_equal [["0."],["0."],[".."]], b.converter
    assert_equal [[".."],[".."],[".."]], space.converter
    assert_equal [[".."],["00"],[".0"]], period.converter
    assert_equal "Undefined Character", undefined_character.converter
  end
end
