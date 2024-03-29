require "./lib/braille_dictionary"

class NightWriterTranslator
  attr_reader :text_to_translate,
              :dictionary
              
  def initialize(text_to_translate)
    @text_to_translate = text_to_translate
    @dictionary = BrailleDictionary.new
  end

  def translate_to_braille
    text_lines_of_forty_characters_or_less = make_text_lines_of_forty_characters_or_less
    braille_message = []
    text_lines_of_forty_characters_or_less.map do |element|
      three_lines_of_braille_arrays = convert_one_text_line_into_three_lines_of_braille_arrays(element)
      braille_message << convert_three_lines_of_braille_arrays_into_three_lines_of_braille_strings(three_lines_of_braille_arrays)
    end
    braille_message
  end

  def make_text_lines_of_forty_characters_or_less
    single_line = @text_to_translate.tr("\n"," ")
    text_lines_of_forty_characters_or_less = []
    until single_line.empty?
      text_lines_of_forty_characters_or_less << single_line.slice!(0..39)
    end
    text_lines_of_forty_characters_or_less
  end
  
  def convert_one_text_line_into_three_lines_of_braille_arrays(element)
    braille_line = [[], [], []]
    element.each_char do |letter|
      braille_letter = @dictionary.translate_letter_to_braille(letter)
      3.times {|n| braille_line[n] << braille_letter[n]}
    end
    braille_line
  end
  
  def convert_three_lines_of_braille_arrays_into_three_lines_of_braille_strings(three_lines_of_braille_arrays)
    three_lines_of_braille_arrays[0].join + "\n" +
    three_lines_of_braille_arrays[1].join + "\n" + 
    three_lines_of_braille_arrays[2].join
  end
end
