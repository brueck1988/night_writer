require "./lib/braille_dictionary"


class NightWriter
  attr_reader :braille_message,
              :message

  def initialize(message)
    @message = message
    @braille_message = []
  end

  def convert_to_braille
    #shortened_strings = @message.make_strings_of_twenty_characters_or_less
    a = [["0."],[".."],[".."]]
    b = [["0."],["0."],[".."]]
    c = [["00"],[".."],[".."]]
    d = [["00"],[".0"],[".."]]
    b + c
    #@message.each
  end

  def make_strings_of_twenty_characters_or_less
  end


end
