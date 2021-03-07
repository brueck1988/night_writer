require './lib/night_writer'
require './lib/night_reader'

class FileIo
  def initialize
    @file_name = []
  end

  def start
    start_text_conversion
    start_braille_conversion
  end

  def start_text_conversion
    read_text_file
    count_characters_in_input(@text_to_translate)
    convert_text_file_contents_to_braille
    file_name_prompt
    write_file(@braille, 0)
    print_message_text_to_braille
  end

  def start_braille_conversion
    read_braille_file
    count_characters_in_input(@braille_to_translate)
    convert_braille_file_contents_to_text
    file_name_prompt
    write_file(@text, 1)
    print_message_braille_to_text
  end

  def read_text_file
  message_file = File.open("message.txt")
  @text_to_translate = message_file.read
  message_file.close
  end

  def read_braille_file
  message_file = File.open(@file_name[0])
  @braille_to_translate = message_file.read
  message_file.close
  end

  def convert_text_file_contents_to_braille
    text = NightWriter.new(@text_to_translate)
    @braille = text.convert_to_braille
  end

  def convert_braille_file_contents_to_text
    require "pry";binding.pry
    braille = NightReader.new(@braille_to_translate)
    @text = braille.convert_to_text
  end

  def write_file(file_contents, count)
    file = File.new(@file_name[count], "w")
    file.puts(file_contents)
    file.close
  end

  def print_message_text_to_braille
    print "'message.txt' containing #{@character_count} characters has been translated to braille and saved to '#{@file_name[0]}.'"
  end

  def print_message_braille_to_text
    print "'#{@file_name[0]}' containing #{@character_count} characters has been translated to text and saved to '#{@file_name[1]}.'"
  end

  def file_name_prompt
    print "\nWhat would you like to name the output file? (No file extension required.)\n>"
    user_prompt = gets.chomp.downcase
    @file_name << "#{user_prompt}.txt"
  end

  def count_characters_in_input(characters_to_count)
    @character_count = characters_to_count.tr("\n","").length
  end
end
