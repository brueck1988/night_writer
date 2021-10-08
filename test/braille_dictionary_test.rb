require 'minitest/autorun'
require 'minitest/pride'
require './lib/braille_dictionary'

class BrailleDictionaryTest < Minitest::Test
  def test_it_exists
    braille_dictionary = BrailleDictionary.new
    assert_instance_of BrailleDictionary, braille_dictionary
  end

  def test_it_has_attributes
    braille_dictionary = BrailleDictionary.new
    expected =  {
                  "a" => ["0.","..",".."],
                  "b" => ["0.","0.",".."],
                  "c" => ["00","..",".."],
                  "d" => ["00",".0",".."],
                  "e" => ["0.",".0",".."],
                  "f" => ["00","0.",".."],
                  "g" => ["00","00",".."],
                  "h" => ["0.","00",".."],
                  "i" => [".0","0.",".."],
                  "j" => [".0","00",".."],
                  "k" => ["0.","..","0."],
                  "l" => ["0.","0.","0."],
                  "m" => ["00","..","0."],
                  "n" => ["00",".0","0."],
                  "o" => ["0.",".0","0."],
                  "p" => ["00","0.","0."],
                  "q" => ["00","00","0."],
                  "r" => ["0.","00","0."],
                  "s" => [".0","0.","0."],
                  "t" => [".0","00","0."],
                  "u" => ["0.","..","00"],
                  "v" => ["0.","0.","00"],
                  "w" => [".0","00",".0"],
                  "x" => ["00","..","00"],
                  "y" => ["00",".0","00"],
                  "z" => ["0.",".0","00"],
                  " " => ["..","..",".."],
                  "." => ["..","00",".0"],
                  "," => ["..","0.",".."],
                  "'" => ["..","..","0."]
                }
    assert_equal expected, braille_dictionary.dictionary
  end

  def test_converter
    braille_dictionary = BrailleDictionary.new

    assert_equal ["0.","..",".."], braille_dictionary.translate_letter_to_braille("a")
    assert_equal ["0.","0.",".."], braille_dictionary.translate_letter_to_braille("b")
    assert_equal ["..","..",".."], braille_dictionary.translate_letter_to_braille(" ")
    assert_equal ["..","00",".0"], braille_dictionary.translate_letter_to_braille(".")
    assert_equal "Undefined Character", braille_dictionary.translate_letter_to_braille("&")
  end
end