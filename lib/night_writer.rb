require "./lib/braille_dictionary"
require './lib/file_io'

class NightWriter
  include FileIo

  attr_reader :text_to_translate

  def initialize
    @text_to_translate = read_text_file(ARGV[0])
  end

  def start
    count_characters_in_input
    make_strings_of_forty_characters_or_less
    new_translation = NightWriterTranslate.new(@text_to_translate)
    braille_message = new_translation.convert_to_braille
    write_file(ARGV[1], braille_message)
    print_message
  end

  def count_characters_in_input
    @character_count = @text_to_translate.tr("\n","").length
  end

  def print_message
    print "Created '#{ARGV[1]}' containing #{@character_count} characters."
  end
end

new_translation = NightWriter.new
new_translation.start
