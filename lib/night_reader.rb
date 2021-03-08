require "./lib/alphanumeric_dictionary"
require './lib/file_io'

class NightReader
  include FileIo
  attr_reader :text_to_convert

  def initialize
    @text_to_translate = read_text_file(ARGV[0])
    @text_message = []
  end

  def start
    count_characters_in_input
    convert_to_text
    write_file(ARGV[1], @text_message)
    print_message
  end

  def convert_to_text
    split_text = @text_to_translate.split("\n")
    until split_text == []
      @braille_line = [[],[],[]]
      @text_message_line = []
      @braille_line[0] << split_text.slice!(0)
      @braille_line[1] << split_text.slice!(0)
      @braille_line[2] << split_text.slice!(0)
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

  def count_characters_in_input
    @character_count = @text_to_translate.tr("\n","").length
  end

  def print_message
    print "Created '#{ARGV[1]}' containing #{@character_count} characters."
  end
end

new_translation = NightReader.new
new_translation.start
