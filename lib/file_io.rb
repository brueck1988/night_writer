require './lib/night_writer'

class FileIo

  def start
    read_file
    count_characters_in_input
    write_file
    print_message
  end

  def read_file
  message_file = File.open("message.txt")
  @text_to_translate = message_file.read
  #message_readlines = message_file.readlines.map(&:chomp)
  message_file.close
  end

  def write_file
  @text = NightWriter.new(@text_to_translate)
  braille = @text.convert_to_braille

  braille_file = File.new("braille.txt", "w")
  braille_file.puts(braille)
  braille_file.close
  end

  def print_message
    print "message.txt braille.txt\nCreated 'braille.txt' containing #{@character_count} characters"
  end

  def count_characters_in_input
    require "pry";binding.pry
    @character_count = @text_to_translate.tr("\n","").length
  end
end
