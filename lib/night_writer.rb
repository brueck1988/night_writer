require "./lib/braille_dictionary"

class NightWriter
  include BrailleDictionary

  attr_reader :braille_message,
              :text_to_convert,
              :letter_to_be_translated

  def initialize(text_to_convert)
    @text_to_convert = text_to_convert
    @braille_message = []
    @letter_to_be_translated = letter_to_be_translated
  end

  def convert_to_braille
    #shortened_strings = @message.make_strings_of_twenty_characters_or_less
    # a = [["0."],[".."],[".."]]
    # b = [["0."],["0."],[".."]]
    # c = [["00"],[".."],[".."]]
    # d = [["00"],[".0"],[".."]]
    # b + c
    @text_to_convert.each_char do |character|
      require "pry";binding.pry
      @letter_to_be_translated = character
      @braille_message << @letter_to_be_translated.character_to_braille
    end
    @braille_message
  end

  def make_strings_of_twenty_characters_or_less
  end


end
