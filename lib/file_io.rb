require './lib/night_writer'

class FileIo
  def start
    read_file
    count_characters_in_input
    convert_file_contents_to_braille
    file_name_prompt
    write_file
    print_message
  end

  def read_file
  message_file = File.open("message.txt")
  @text_to_translate = message_file.read
  message_file.close
  end

  def convert_file_contents_to_braille
    text = NightWriter.new(@text_to_translate)
    @braille = text.convert_to_braille
  end

  def write_file
  braille_file = File.new(@write_file_name, "w")
  braille_file.puts(@braille)
  braille_file.close
  end

  def print_message
    print "'message.txt' containing #{@character_count} characters has been translated to braille and saved to '#{@write_file_name}.'"
  end

  def file_name_prompt
    print "\nWhat would you like to name the output file? (No file extension required.)\n>"
    user_prompt = gets.chomp.downcase
    @write_file_name = "#{user_prompt}.txt"
  end

  def count_characters_in_input
    @character_count = @text_to_translate.tr("\n","").length
  end
end
