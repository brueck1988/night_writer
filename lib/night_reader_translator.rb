require "./lib/alphanumeric_dictionary"

class NightReaderTranslator
  attr_reader :braille_to_translate

  def initialize(braille_to_translate)
    @braille_to_translate = braille_to_translate
  end

  def translate_to_text
    braille_split_at_line_breaks = split_braille_at_line_breaks
    text_message = []
    until braille_split_at_line_breaks == []
      braille_line = []
      3.times {braille_line << braille_split_at_line_breaks.slice!(0)}
      text_message << convert_three_lines_of_braille_arrays_into_one_text_line(braille_line)
    end
    text_message
  end
  
  def convert_three_lines_of_braille_arrays_into_one_text_line(braille_line)
    text_message_line = []
    dictionary = AlphanumericDictionary.new
    until braille_line == ["", "", ""]
      braille_character = []
      3.times {|n| braille_character << braille_line[n].slice!(0..1)}
      text_message_line << dictionary.translate_braille_to_letter(braille_character)
    end
    text_message_line.join
  end

  def split_braille_at_line_breaks
    @braille_to_translate.split("\n")
  end
end
