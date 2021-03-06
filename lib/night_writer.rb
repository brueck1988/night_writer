require "./lib/braille_dictionary"


class NightWriter
  attr_reader :braille_message,
              :text_to_convert

  def initialize(text_to_convert)
    @text_to_convert = text_to_convert
    @braille_message = []
  end

  def convert_to_braille
    #shortened_strings = @message.make_strings_of_twenty_characters_or_less
    @braille_message0 = []
    @braille_message1 = []
    @braille_message2 = []
    @text_to_convert.each_char do |character|
      letter = BrailleDictionary.new(character)
      @braille_message0 << letter.converter[0]
      @braille_message1 << letter.converter[1]
      @braille_message2 << letter.converter[2]
    end
    @braille_message << @braille_message0.flatten.join + "\n" + @braille_message1.flatten.join + "\n" + @braille_message2.flatten.join
  end

  # def make_strings_of_twenty_characters_or_less
  # end


end
