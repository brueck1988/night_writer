require "./lib/braille_dictionary"

class NightWriterTranslator
  attr_reader :text_to_translate

  def initialize(text_to_translate)
    @text_to_translate = text_to_translate.downcase
  end

  def convert_to_braille
    elements_of_forty = make_strings_of_forty_characters_or_less
    braille_message = []
    elements_of_forty.map do |element|
      lines_of_braille_arrays = convert_one_text_line_into_3_lines_of_braille_arrays(element)
      braille_message << convert_3_lines_of_braille_arrays_into_3_lines_of_braille_strings(lines_of_braille_arrays)
    end
    braille_message
  end

  def make_strings_of_forty_characters_or_less
    single_line = @text_to_translate.tr("\n"," ")
    elements_of_forty = []
    until single_line.empty?
      elements_of_forty << single_line.slice!(0..39)
    end
    elements_of_forty
  end
  
  def convert_one_text_line_into_3_lines_of_braille_arrays(element)
    braille_line = [[], [], []]
    element.each_char do |character|
      letter = BrailleDictionary.new(character)
      braille_line[0] << letter.converter[0]
      braille_line[1] << letter.converter[1]
      braille_line[2] << letter.converter[2]
    end
    braille_line
  end
  
  def convert_3_lines_of_braille_arrays_into_3_lines_of_braille_strings(lines_of_braille_arrays)
    lines_of_braille_arrays[0].flatten.join + "\n" +
    lines_of_braille_arrays[1].flatten.join + "\n" + 
    lines_of_braille_arrays[2].flatten.join
  end
end
