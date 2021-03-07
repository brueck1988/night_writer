require "./lib/braille_dictionary"
require "./lib/file_io"

class NightWriter
  attr_reader :braille_message,
              :text_to_convert

  def initialize(text_to_convert)
    @text_to_convert = text_to_convert.downcase
    @braille_message = []
  end

  def make_strings_of_forty_characters_or_less
    single_line = @text_to_convert.tr("\n","")
    @elements_of_twenty = []
    until single_line.empty?
      @elements_of_twenty << single_line.slice!(0..39)
    end
    @elements_of_twenty
  end

  def convert_to_braille
    make_strings_of_forty_characters_or_less
    @elements_of_twenty.each do |element|
      @braille_message0 = []
      @braille_message1 = []
      @braille_message2 = []
      element.each_char do |character|
        letter = BrailleDictionary.new(character)
        @braille_message0 << letter.converter[0]
        @braille_message1 << letter.converter[1]
        @braille_message2 << letter.converter[2]
      end
      @braille_message << @braille_message0.flatten.join + "\n" +
        @braille_message1.flatten.join + "\n" + @braille_message2.flatten.join
    end
    @braille_message
  end
end
