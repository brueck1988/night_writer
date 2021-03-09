require "./lib/braille_dictionary"

class NightWriterTranslator
  attr_reader :text_to_translate,
              :braille_message

  def initialize(text_to_translate)
    @text_to_translate = text_to_translate
    @braille_message = []
  end

  def convert_to_braille
    make_strings_of_forty_characters_or_less
    @elements_of_twenty.each do |element|
      braille_line = [[], [], []]
      element.each_char do |character|
        letter = BrailleDictionary.new(character)
        braille_line[0] << letter.converter[0]
        braille_line[1] << letter.converter[1]
        braille_line[2] << letter.converter[2]
      end
      @braille_message << braille_line[0].flatten.join + "\n" +
      braille_line[1].flatten.join + "\n" + braille_line[2].flatten.join
    end
    @braille_message
  end

  def make_strings_of_forty_characters_or_less
    single_line = @text_to_translate.tr("\n","")
    @elements_of_twenty = []
    until single_line.empty?
      @elements_of_twenty << single_line.slice!(0..39)
    end
    @elements_of_twenty
  end
end
