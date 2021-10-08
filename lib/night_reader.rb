require './lib/file_io'
require './lib/night_reader_translator'

class NightReader
  include FileIo
  attr_reader :text_to_translate

  def initialize
    if ARGV[0].nil? || ARGV[1].nil?    #This conditional allows this class to 
      ARGV[0] = "braille_output1.txt"  #be tested since this app relies on ARGV
      ARGV[1] = "original_message.txt"
    end
    @braille_to_translate = read_text_file(ARGV[0]) 
  end

  def start
    character_count = count_characters_in_input
    night_reader = NightReaderTranslator.new(@braille_to_translate)
    text_message = night_reader.translate_to_text
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
