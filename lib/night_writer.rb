require './lib/file_io'
require './lib/night_writer_translator'

class NightWriter
  include FileIo

  def initialize
    @text_to_translate = read_text_file(ARGV[0])
  end

  def start
    downcased_text_to_translate = downcase_text
    character_count = count_characters_in_input
    new_translation = NightWriterTranslator.new(downcased_text_to_translate)
    braille_message = new_translation.convert_to_braille
    write_file(ARGV[1], braille_message)
    print_message(character_count)
  end
  
  def downcase_text
    @text_to_translate.downcase
  end

  def count_characters_in_input
    @text_to_translate.tr("\n","").length
  end

  def print_message(character_count)
    print "Created '#{ARGV[1]}' containing #{character_count} characters."
  end
end

new_translation = NightWriter.new
new_translation.start
