require "./lib/alphanumeric_dictionary"

class NightReaderTranslator
  attr_reader :braille_to_translate,
              :text_message

  def initialize(braille_to_translate)
    @braille_to_translate = braille_to_translate
    @text_message = []
  end

  def translate_to_text
    split_braille_at_line_breaks
    until @split_braille == []
      braille_line = [[],[],[]]
      @text_message_line = []
      braille_line[0] << @split_braille.slice!(0)
      braille_line[1] << @split_braille.slice!(0)
      braille_line[2] << @split_braille.slice!(0)
      until @braille_line == [[""], [""], [""]]
        braille_character = [[],[],[]]
        braille_character[0] << @braille_line[0][0].slice!(0..1)
        braille_character[1] << @braille_line[1][0].slice!(0..1)
        braille_character[2] << @braille_line[2][0].slice!(0..1)
        letter = AlphanumericDictionary.new(braille_character)
        @text_message_line << letter.converter
      end
      @text_message << @text_message_line.join
    end
    @text_message
  end

  def split_braille_at_line_breaks
    @split_braille = @braille_to_translate.split("\n")
  end
end
