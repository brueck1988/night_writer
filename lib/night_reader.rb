require './lib/file_io'
require './lib/night_reader_translator'

class NightReader
  include FileIo
  attr_reader :text_to_translate

  def initialize
    @braille_to_translate = read_text_file(ARGV[0])
  end

  def start
    character_count = count_characters_in_input
    new_translation = NightReaderTranslator.new(@braille_to_translate)
    text_message = new_translation.translate_to_text
    write_file(ARGV[1], text_message)
    print_message(character_count)
  end

  def count_characters_in_input
    @braille_to_translate.tr("\n","").length
  end

  def print_message(character_count)
    print "Created '#{ARGV[1]}' containing #{character_count} characters."
  end
end

new_translation = NightReader.new
new_translation.start
